defmodule ArkClient.PeerTest do
  use ExUnit.Case
  import ArkClient.Peer

  @client ArkClient.Client.new(%{
            protocol: "https",
            ip: "dexplorer.ark.io",
            port: 8443,
            nethash: "578e820911f24e039733b45e4882b73e301f813a0d2c31330dafda84534ffa23",
            version: "1.1.1",
            network_address: ArkClient.Client.devnet_network_address
          })

  test "call ArkClient.Peer.peer" do
    response = peer(@client, "167.114.29.33", 8443)

    assert({:ok, _} = response)
  end

  test "call ArkClient.Peer.peers" do
    response = peers(@client)

    assert({:ok, _} = response)
  end

  test "call ArkClient.Peer.version" do
    response = version(@client)

    assert({:ok, _} = response)
  end
end
