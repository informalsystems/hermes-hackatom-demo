package keeper_test

import (
	"context"
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/informalsystems/hermes-ibc-workshop/mars/testutil/keeper"
	"github.com/informalsystems/hermes-ibc-workshop/mars/x/mars/keeper"
	"github.com/informalsystems/hermes-ibc-workshop/mars/x/mars/types"
)

func setupMsgServer(t testing.TB) (types.MsgServer, context.Context) {
	k, ctx := keepertest.MarsKeeper(t)
	return keeper.NewMsgServerImpl(*k), sdk.WrapSDKContext(ctx)
}
