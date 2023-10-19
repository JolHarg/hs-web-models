{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Model.User where

import Data.Model
import Types.Email
import Types.Name
import Types.Password
import Types.Username
import Types.UserType
import Types.VerificationToken

type MaybeVerificationToken  = Maybe VerificationToken

modelUser ∷ Model
modelUser = defaultModel {
    modelName = "User",
    pluralModelName = "Users",
    endpoint = "user",
    pluralEndpoint = "users",
    fields = [
        Field { lowerField = "name", upperField = "Name", typeName = ''Name },
        Field { lowerField = "username", upperField = "Username", typeName = ''Username },
        Field { lowerField = "email", upperField = "Email", typeName = ''Email },
        Field { lowerField = "password", upperField = "Password", typeName = ''Password },
        Field { lowerField = "userType", upperField = "Type", typeName = ''UserType },
        Field { lowerField = "verificationToken", upperField = "VerificationToken", typeName = ''MaybeVerificationToken }
    ]
}
