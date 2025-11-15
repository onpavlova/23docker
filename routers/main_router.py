from fastapi import APIRouter
from starlette.requests import Request

router = APIRouter()

@router.get("/ping/", status_code=200)
async def about():
    return {"message": "pong"}
