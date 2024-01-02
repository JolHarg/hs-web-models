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
        defaultField { lowerField = "name", upperField = "Name", typeName = ''Name },
        defaultField { lowerField = "username", upperField = "Username", typeName = ''Username },
        defaultField { lowerField = "email", upperField = "Email", typeName = ''Email },
        defaultField { lowerField = "password", upperField = "Password", typeName = ''Password },
        defaultField { lowerField = "userType", upperField = "Type", typeName = ''UserType },
        defaultField { lowerField = "verificationToken", upperField = "VerificationToken", typeName = ''MaybeVerificationToken }
    ]
}
