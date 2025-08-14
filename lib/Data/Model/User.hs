{-# LANGUAGE TemplateHaskellQuotes #-}

module Data.Model.User where

import Data.Model
import Data.Text               (Text)
import Types.Email
import Types.Name
import Types.Password
import Types.Username
-- import Types.UserType
import Types.VerificationToken

type MaybeVerificationToken  = Maybe VerificationToken

modelUser ∷ Model
modelUser = defaultModel {
    singularType = "User",
    pluralType = "Users",
    singularEndpoint = "user",
    pluralEndpoint = "users",
    createFields = Nothing, -- only via register I guess - todo really?
    retrieveFields = Just [
        defaultField { lowerField = "username", upperField = "Username", dbField = "username", typeName = ''Username }, -- don't include sql field???
        defaultField { lowerField = "email", upperField = "Email", dbField = "email", typeName = ''Email },
        defaultField { lowerField = "fullName", upperField = "FullName", dbField = "full_name", typeName = ''Name },
        defaultField { lowerField = "givenName", upperField = "GivenName", dbField = "given_name", typeName = ''Name },
        defaultField { lowerField = "secretEmailId", upperField = "SecretEmailId", dbField = "secret_email_id", typeName = ''Text } -- retrieve only, random regenerate available
        ],
    updateFields = Just [
        defaultField { lowerField = "username", upperField = "Username", dbField = "username", typeName = ''Username }, -- don't include sql field???
        defaultField { lowerField = "email", upperField = "Email", dbField = "email", typeName = ''Email },
        defaultField { lowerField = "fullName", upperField = "FullName", dbField = "full_name", typeName = ''Name },
        defaultField { lowerField = "givenName", upperField = "GivenName", dbField = "given_name", typeName = ''Name },
        defaultField { lowerField = "password", upperField = "Password", dbField = "password", typeName = ''Password } -- update only, clever huh
        ],
    deleteFields = Nothing -- not supported yet
}
