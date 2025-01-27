.class public Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageExchange"
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field private final requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

.field private responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

.field private final serviceName:Ljava/lang/String;

.field public final target:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "target"    # Ljava/net/InetSocketAddress;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 988
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    .line 990
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->serviceName:Ljava/lang/String;

    .line 991
    iput-object p4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 992
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRequestMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    return-object v0
.end method

.method public getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    return-object v0
.end method

.method public messageExchange()V
    .locals 14

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    const/4 v1, 0x0

    .line 1033
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 1035
    .local v2, "out":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/TextProtocol;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 1038
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    :goto_0
    new-instance v6, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 1040
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1041
    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$700(Lcom/sleepycat/je/rep/impl/TextProtocol;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1042
    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$600(Lcom/sleepycat/je/rep/impl/TextProtocol;)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1043
    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setBlocking(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1044
    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReuseAddr(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v6

    .line 1036
    invoke-interface {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v3

    move-object v0, v3

    .line 1046
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->serviceName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 1049
    nop

    .line 1050
    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1051
    .local v3, "ostream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    move-object v2, v4

    .line 1052
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->wireFormat()Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, "wireFormat":Ljava/lang/String;
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1054
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    .line 1055
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/utilint/TestHook;->getHookValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 1057
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v7, v7, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1058
    invoke-static {v10}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1057
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1062
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 1064
    invoke-static {v0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1065
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v12, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, "line":Ljava/lang/String;
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1067
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/sleepycat/je/utilint/TestHook;->doHook(Ljava/lang/Object;)V

    .line 1068
    invoke-static {}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$800()Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v5

    invoke-interface {v5}, Lcom/sleepycat/je/utilint/TestHook;->getHookValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v1, v5

    .line 1071
    :cond_2
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v7, v7, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1072
    invoke-static {v10}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1071
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1074
    if-nez v1, :cond_3

    .line 1075
    new-instance v5, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    sget-object v7, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Premature EOF for request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->setResponseMessage(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)V

    goto :goto_1

    .line 1080
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-virtual {v5, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->parseResponse(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->setResponseMessage(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1106
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "ostream":Ljava/io/OutputStream;
    .end local v4    # "wireFormat":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v8, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v9, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v10, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    move-object v11, v0

    move-object v13, v2

    invoke-static/range {v8 .. v13}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 1107
    move-object v1, v12

    goto/16 :goto_9

    .line 1106
    :catchall_0
    move-exception v3

    move-object v1, v12

    goto/16 :goto_a

    .line 1096
    :catch_0
    move-exception v3

    move-object v1, v12

    goto :goto_2

    .line 1094
    :catch_1
    move-exception v3

    move-object v1, v12

    goto/16 :goto_3

    .line 1088
    :catch_2
    move-exception v3

    move-object v1, v12

    goto/16 :goto_4

    .line 1086
    :catch_3
    move-exception v3

    move-object v1, v12

    goto/16 :goto_5

    .line 1084
    :catch_4
    move-exception v3

    move-object v1, v12

    goto/16 :goto_6

    .line 1082
    :catch_5
    move-exception v3

    move-object v1, v12

    goto/16 :goto_7

    .line 1106
    .end local v12    # "in":Ljava/io/BufferedReader;
    .local v1, "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    goto/16 :goto_a

    .line 1096
    :catch_6
    move-exception v3

    .line 1097
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    .line 1098
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1099
    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Unexpected exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1100
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1098
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed; attempting request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 1103
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1102
    invoke-static {v4, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v0    # "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "out":Ljava/io/PrintWriter;
    throw v4

    .line 1094
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataChannel":Lcom/sleepycat/je/rep/net/DataChannel;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catch_7
    move-exception v3

    .line 1095
    .local v3, "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    :goto_3
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    .end local v3    # "e":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    goto :goto_8

    .line 1088
    :catch_8
    move-exception v3

    .line 1089
    .local v3, "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    :goto_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1090
    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " response format error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1091
    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1089
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1093
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    .end local v3    # "ime":Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
    goto :goto_8

    .line 1086
    :catch_9
    move-exception v3

    .line 1087
    .local v3, "e":Ljava/io/IOException;
    :goto_5
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 1084
    :catch_a
    move-exception v3

    .line 1085
    .local v3, "e":Ljava/net/SocketException;
    :goto_6
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    .end local v3    # "e":Ljava/net/SocketException;
    goto :goto_8

    .line 1082
    :catch_b
    move-exception v3

    .line 1083
    .local v3, "e":Ljava/net/SocketTimeoutException;
    :goto_7
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1106
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    :goto_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v4, v3, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v3, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v3, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 1107
    nop

    .line 1108
    :goto_9
    return-void

    .line 1106
    :goto_a
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v4, v4, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v5, v5, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v6, v6, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-static/range {v4 .. v9}, Lcom/sleepycat/je/rep/elections/Utils;->cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    throw v3
.end method

.method public run()V
    .locals 7

    .line 1004
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->messageExchange()V

    .line 1006
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    .line 1009
    .local v0, "error":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->getErrorType()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->VERSION_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    if-ne v1, v2, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->getSendVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->setSendVersion(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->messageExchange()V

    .line 1012
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v2, v2, Lcom/sleepycat/je/rep/impl/TextProtocol;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v3, v3, Lcom/sleepycat/je/rep/impl/TextProtocol;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1014
    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$500(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Resend message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 1015
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->requestMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    .line 1016
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getSendVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while protocol version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1017
    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because of the version mismatch, the returned response message is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1022
    .end local v0    # "error":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    :cond_0
    return-void
.end method

.method public setResponseMessage(Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;)V
    .locals 0
    .param p1, "responseMessage"    # Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 1111
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->responseMessage:Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    .line 1112
    return-void
.end method
