import requests
from fastapi import FastAPI

app = FastAPI()

@app.get('/')
async def get_pun():
    url = "https://punapi.rest/api/pun"
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()
        return data['pun']
    else:
        return f"Erreur {response.status_code}"

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)

