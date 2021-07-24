from bs4 import BeautifulSoup
import requests
import re
import csv
import os.path
import time

# url = 'https://www.yelp.com/biz/tipo-00-melbourne-2?osq=Tipo+00'
# not_page_one = 'https://www.yelp.com/biz/tipo-00-melbourne-2?osq=Tipo%2000&start='


def find_divs(url):
    page = requests.get(url)
    soup = BeautifulSoup(page.text, 'html.parser')
    reviews = []
    # links = soup.find_all('a', {"class": "css-166la90"})
    review_div = soup.find_all('div', {
        "class": "review__373c0__13kpL border-color--default__373c0__2oFDT"
    })
    page_num_div = soup.find_all('div', {
        "class": "border-color--default__373c0__2oFDT text-align--center__373c0__1l506"
    })

    return [page_num_div, review_div]


def find_last_page(divs):
    for div in divs:
        text = (div.find('span').text)
        page_numbers = int(re.search(
            "[^.][0-9].", text).group().strip()) if len(text) > 6 else int(re.search("[^.][0-9]", text).group().strip())
        # print(int(page_numbers.group().strip()))
        return page_numbers


def find_reviews(links):

    reviews = []

    for i in links:
        review_dict = {}
        review_dict['name'] = (i.find('a', {
            "class": "css-166la90"
        }).text)
        review_dict['score'] = (i.find('div', {
            "class": "margin-t1__373c0__oLmO6 margin-b1-5__373c0__2Wblx border-color--default__373c0__2oFDT"
        }).find('div', {
            "class": "arrange__373c0__UHqhV gutter-1__373c0__2B2sK vertical-align-middle__373c0__2TQsQ border-color--default__373c0__2oFDT"
        }).find('div', {
            "class": "arrange-unit__373c0__1piwO border-color--default__373c0__2oFDT"
        }).find('span', {
            "class": "display--inline__373c0__1DbOG border-color--default__373c0__2oFDT"
        }).find('div', {
            "class": "i-stars__373c0__1T6rz"
        })['aria-label'])
        review_dict['date'] = (i.find('div', {
            "class": "margin-t1__373c0__oLmO6 margin-b1-5__373c0__2Wblx border-color--default__373c0__2oFDT"
        }).find('div', {
            "class": "arrange__373c0__UHqhV gutter-1__373c0__2B2sK vertical-align-middle__373c0__2TQsQ border-color--default__373c0__2oFDT"
        }).find('div', {
            "class": "arrange-unit__373c0__1piwO arrange-unit-fill__373c0__17z0h border-color--default__373c0__2oFDT"
        }).find('span', {
            "class": "css-e81eai"
        }).text)
        if(i.find('div', {
            "class": "margin-b2__373c0__abANL border-color--default__373c0__2oFDT"
        }).find('p', {
            "class": "comment__373c0__1M-px css-n6i4z7"
        })):
            review_dict['review'] = (i.find('div', {
                "class": "margin-b2__373c0__abANL border-color--default__373c0__2oFDT"
            }).find('p', {
                "class": "comment__373c0__1M-px css-n6i4z7"
            }).text)

            reviews.append(review_dict)
        else:
            review_dict['review'] = (i.find_all('div', {
                "class": "margin-b2__373c0__abANL border-color--default__373c0__2oFDT"
            })[1].find('p', {
                "class": "comment__373c0__1M-px css-n6i4z7"
            }).text)

            reviews.append(review_dict)

    return reviews


def write_dict_to_csv(rows, name):
    fields = ['name', 'score', 'date', 'review']
    if os.path.isfile(name):
        with open(name, 'a') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=fields)
            for row in rows:
                print("writing row")
                writer.writerow(row)
    else:
        with open(name, 'w') as csv_file:
            writer = csv.DictWriter(csv_file, fieldnames=fields)
            writer.writeheader()
            for row in rows:
                print("writing row name")
                writer.writerow(row)


def yelp_main_scrape(name):
    pages = 0
    page = 10
    run = True
    while run:
        if pages == 0:
            url = 'https://www.yelp.com/biz/italia-39-pizzeria-and-degustation-melbourne?osq=%2B39+Pizzeria'
            try:
                [div, links] = find_divs(url)
                pages = find_last_page(div) * 10 - 10
                print(pages)
                names_links = find_reviews(links)
                write_dict_to_csv(names_links, name)
                print('sleeping.....')
                time.sleep(10)
            except:
                print("cannot execute")
                print("exitting")
                run = False

        else:
            while page <= pages:
                try:
                    print(page)
                    not_page_one = f"https://www.yelp.com/biz/italia-39-pizzeria-and-degustation-melbourne?osq=%2B39%20Pizzeria&start={page}"
                    [div, links] = find_divs(not_page_one)
                    names_links = find_reviews(links)
                    write_dict_to_csv(names_links)
                    page += 10
                    if page != pages:
                        print('sleeping.....')
                        time.sleep(10)
                    else:
                        print("this is the last page")
                except:
                    print('cannot execute')
                    print("exitting")
                    run = False
            run = False


def main():
    yelp_main_scrape("39_Pizzeria.csv")


if __name__ == "__main__":
    main()
