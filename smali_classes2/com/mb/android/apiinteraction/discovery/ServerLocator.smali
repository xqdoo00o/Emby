.class public Lcom/mb/android/apiinteraction/discovery/ServerLocator;
.super Ljava/lang/Object;
.source "ServerLocator.java"


# instance fields
.field private jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

.field private logger:Lcom/mb/android/model/logging/ILogger;


# direct methods
.method public constructor <init>(Lcom/mb/android/model/logging/ILogger;Lcom/mb/android/model/serialization/IJsonSerializer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    .line 26
    iput-object p2, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    return-void
.end method

.method private Receive(Ljava/net/DatagramSocket;JLcom/mb/android/apiinteraction/Response;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/DatagramSocket;",
            "J",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p2, v2

    if-lez v5, :cond_2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v5, 0x3a98

    .line 102
    new-array v5, v5, [B

    .line 103
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v5

    invoke-direct {v6, v5, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    long-to-int v5, p2

    .line 104
    invoke-virtual {p1, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 107
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    .line 117
    iget-object v7, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">>> Broadcast response from server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Object;

    invoke-interface {v7, v8, v10}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 122
    iget-object v7, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v7, v8, v4}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v4, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->jsonSerializer:Lcom/mb/android/model/serialization/IJsonSerializer;

    const-class v7, Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;

    invoke-interface {v4, v6, v7}, Lcom/mb/android/model/serialization/IJsonSerializer;->DeserializeFromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;->setEndpointAddress(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-virtual {v4}, Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 131
    invoke-virtual {v4}, Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr p2, v4

    goto/16 :goto_0

    .line 110
    :catch_0
    iget-object p1, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "Server discovery timed out waiting for response."

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "Found %d servers"

    invoke-interface {p1, p3, p2}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p4, v0}, Lcom/mb/android/apiinteraction/Response;->onResponse(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public FindServers(ILcom/mb/android/apiinteraction/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/mb/android/apiinteraction/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/mb/android/model/apiclient/ServerDiscoveryInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Error sending DatagramPacket"

    const/4 v1, 0x0

    .line 34
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    const/4 v3, 0x1

    .line 35
    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    const-string v3, "who is EmbyServer?"

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v4, 0x1cbf

    .line 43
    :try_start_1
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v3

    const-string v7, "255.255.255.255"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 44
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 45
    iget-object v5, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">>> Request packet sent to: 255.255.255.255 (DEFAULT)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 47
    :try_start_2
    iget-object v6, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v6, v0, v5, v7}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 52
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 53
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 55
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InterfaceAddress;

    .line 60
    invoke-virtual {v8}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v8, :cond_2

    goto :goto_2

    .line 67
    :cond_2
    :try_start_3
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v10, v3

    invoke-direct {v9, v3, v10, v8, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 68
    invoke-virtual {v2, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v9

    .line 70
    :try_start_4
    iget-object v10, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v11, v1, [Ljava/lang/Object;

    invoke-interface {v10, v0, v9, v11}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    :goto_3
    iget-object v9, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ">>> Request packet sent to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; Interface: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v1, [Ljava/lang/Object;

    invoke-interface {v9, v8, v10}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">>> Done looping over all network interfaces. Now waiting for a reply!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/mb/android/model/logging/ILogger;->Debug(Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v3, p1

    .line 79
    invoke-direct {p0, v2, v3, v4, p2}, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->Receive(Ljava/net/DatagramSocket;JLcom/mb/android/apiinteraction/Response;)V

    .line 82
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 86
    iget-object v0, p0, Lcom/mb/android/apiinteraction/discovery/ServerLocator;->logger:Lcom/mb/android/model/logging/ILogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error finding servers"

    invoke-interface {v0, v2, p1, v1}, Lcom/mb/android/model/logging/ILogger;->ErrorException(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Lcom/mb/android/apiinteraction/Response;->onError(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method
