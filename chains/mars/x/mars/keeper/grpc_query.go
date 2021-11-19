package keeper

import (
	"github.com/informalsystems/hermes-ibc-workshop/mars/x/mars/types"
)

var _ types.QueryServer = Keeper{}
