import requests

if __name__ == "__main__":
    url = "https://www.example.com/"
    response = requests.get(url)
    
    if response.status_code == 200:
        print("Requests successfully!")
    else:
        print("Failed to requests. Status code:", response.status_code)