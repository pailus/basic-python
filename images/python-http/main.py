import sys
import requests


def main():
    # Periksa apakah argumen URL disediakan
    if len(sys.argv) < 2:
        print("Usage: python main.py <URL>")
        sys.exit(1)
    url = sys.argv[1]
    if url == 'test':
        print("Sukses log")
    else:
        try:
            response = requests.get(url)
            response.raise_for_status()  # Periksa jika ada error HTTP

            print(f"Response from {url}:\n")
            print(response.text[:500])  # Cetak 500 karakter pertama
        except requests.exceptions.RequestException as e:
            print(f"Error fetching data from {url}: {e}")


if __name__ == "__main__":
    main()
