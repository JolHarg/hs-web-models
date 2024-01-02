{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveAnyClass     #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE DerivingVia        #-}
{-# LANGUAGE TemplateHaskell    #-}
{-# LANGUAGE DuplicateRecordFields #-}

module Types.User where

import Data.Model.User
import Types.TH

makeCRUDTypes modelUser
