{-# LANGUAGE LambdaCase            #-}
{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Model.User where

import           Data.Model
import           Types.Email
import           Types.Name
import           Types.Password
import           Types.Username
import           Types.UserType
import           Types.VerificationToken

type MaybeVerificationToken  = Maybe VerificationToken

modelUser ∷ Model
modelUser = Model {
    modelName = "User",
    pluralModelName = "Users",
    endpoint = "user",
    pluralEndpoint = "users",
    fields = [
        ("name", "Name", ''Name),
        ("username", "Username", ''Username),
        ("email", "Email", ''Email),
        ("password", "Password", ''Password),
        ("userType", "Type", ''UserType),
        ("verificationToken", "VerificationToken", ''MaybeVerificationToken)
    ]
}
