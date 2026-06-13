from pydantic import BaseModel 

class StudentCreate(BaseModel):
    name: str
    grade: float

class StudentOut(BaseModel):
    id: int
    name: str
    grade: float

    class Config:
        from_attributes = True # this lets pydantic read data from SQLAlchemy models 

class GradeUpdate(BaseModel):
    grade: float

class UserCreate(BaseModel):
    username: str
    password: str

class UserOut(BaseModel):
    id: int
    username: str

    class Config:
        from_attributes = True
    
class Token(BaseModel):
    access_token: str
    token_type: str


