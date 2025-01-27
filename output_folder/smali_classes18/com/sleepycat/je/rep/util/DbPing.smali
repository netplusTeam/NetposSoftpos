.class public Lcom/sleepycat/je/rep/util/DbPing;
.super Ljava/lang/Object;
.source "DbPing.java"


# static fields
.field private static final undocumentedUsageString:Ljava/lang/String; = "  -netProps <optional>    # name of a property file containing\n                             # properties needed for replication\n                             # service access\n"

.field private static final usageString:Ljava/lang/String;


# instance fields
.field private channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private groupName:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field private socketAddress:Ljava/net/InetSocketAddress;

.field private socketTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/util/DbPing;

    .line 60
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  -nodeName <node name>      # name of the node whose state is\n                             # requested\n  -groupName <group name>    # name of the group which the node\n                             # joins\n  -nodeHost <host:port>      # the host name and port pair the\n                             # node used to join the group\n  -socketTimeout <optional>  # the timeout value for creating a\n                             # socket connection with the node,\n                             # default is 10 seconds if not set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/util/DbPing;->usageString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;I)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "socketTimeout"    # I

    .line 226
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/rep/util/DbPing;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/ReplicationNetworkConfig;)V
    .locals 1
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "socketTimeout"    # I
    .param p4, "netConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    .line 271
    nop

    .line 272
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/sleepycat/je/rep/util/DbPing;->initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    .line 271
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/rep/util/DbPing;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/net/DataChannelFactory;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 1
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "socketTimeout"    # I
    .param p4, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x2710

    iput v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    .line 292
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->nodeName:Ljava/lang/String;

    .line 293
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/DbPing;->groupName:Ljava/lang/String;

    .line 294
    invoke-interface {p1}, Lcom/sleepycat/je/rep/ReplicationNode;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketAddress:Ljava/net/InetSocketAddress;

    .line 295
    iput p3, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    .line 296
    iput-object p4, p0, Lcom/sleepycat/je/rep/util/DbPing;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILjava/io/File;)V
    .locals 1
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/ReplicationNode;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "socketTimeout"    # I
    .param p4, "netPropsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 250
    invoke-static {p4}, Lcom/sleepycat/je/rep/util/DbPing;->makeRepNetConfig(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/je/rep/util/DbPing;-><init>(Lcom/sleepycat/je/rep/ReplicationNode;Ljava/lang/String;ILcom/sleepycat/je/rep/ReplicationNetworkConfig;)V

    .line 251
    return-void
.end method

.method private static initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .locals 1
    .param p0, "repNetConfig"    # Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .param p1, "logContext"    # Ljava/lang/String;

    .line 350
    if-nez p0, :cond_0

    .line 351
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object p0

    .line 354
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->construct(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sleepycat/je/rep/util/DbPing;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/DbPing;-><init>()V

    .line 96
    .local v0, "ping":Lcom/sleepycat/je/rep/util/DbPing;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/DbPing;->parseArgs([Ljava/lang/String;)V

    .line 97
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/DbPing;->getNodeState()Lcom/sleepycat/je/rep/NodeState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method private static makeRepNetConfig(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1
    .param p0, "propFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 339
    if-nez p0, :cond_0

    .line 340
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0

    .line 343
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    return-object v0
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 9
    .param p1, "argv"    # [Ljava/lang/String;

    .line 120
    const-string v0, "The net properties file "

    const/4 v1, 0x0

    .line 121
    .local v1, "argc":I
    array-length v2, p1

    .line 122
    .local v2, "nArgs":I
    const/4 v3, 0x0

    .line 124
    .local v3, "netPropsName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 125
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_c

    .line 129
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "argc":I
    .local v4, "argc":I
    aget-object v1, p1, v1

    .line 130
    .local v1, "thisArg":Ljava/lang/String;
    const-string v5, "-nodeName"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    if-ge v4, v2, :cond_1

    .line 132
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "argc":I
    .local v5, "argc":I
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->nodeName:Ljava/lang/String;

    move v1, v5

    goto/16 :goto_4

    .line 134
    .end local v5    # "argc":I
    .restart local v4    # "argc":I
    :cond_1
    const-string v5, "-nodeName requires an argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 136
    :cond_2
    const-string v5, "-groupName"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    if-ge v4, v2, :cond_3

    .line 138
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "argc":I
    .restart local v5    # "argc":I
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->groupName:Ljava/lang/String;

    move v1, v5

    goto/16 :goto_4

    .line 140
    .end local v5    # "argc":I
    .restart local v4    # "argc":I
    :cond_3
    const-string v5, "-groupName requires an argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 142
    :cond_4
    const-string v5, "-nodeHost"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    if-ge v4, v2, :cond_6

    .line 144
    new-instance v5, Ljava/util/StringTokenizer;

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "argc":I
    .local v6, "argc":I
    aget-object v4, p1, v4

    const-string v7, ":"

    invoke-direct {v5, v4, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 146
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_5

    .line 147
    const-string v5, "Argument for -nodeHost is not valid."

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 150
    :cond_5
    :try_start_0
    new-instance v5, Ljava/net/InetSocketAddress;

    .line 151
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_1

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "the port of -nodeHost is not valid"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 155
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    move v1, v6

    goto :goto_4

    .line 156
    .end local v6    # "argc":I
    .local v4, "argc":I
    :cond_6
    const-string v5, "-nodeHost requires an argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto :goto_3

    .line 158
    :cond_7
    const-string v5, "-socketTimeout"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 159
    if-ge v4, v2, :cond_8

    .line 161
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "argc":I
    .local v5, "argc":I
    :try_start_1
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 162
    :catch_1
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v6, "Argument for -socketTimeout is not valid"

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 164
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    nop

    .line 177
    .end local v1    # "thisArg":Ljava/lang/String;
    move v1, v5

    goto :goto_4

    .line 166
    .end local v5    # "argc":I
    .restart local v1    # "thisArg":Ljava/lang/String;
    .local v4, "argc":I
    :cond_8
    const-string v5, "-socketTimeout requires an argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto :goto_3

    .line 168
    :cond_9
    const-string v5, "-netProps"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 169
    if-ge v4, v2, :cond_a

    .line 170
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "argc":I
    .restart local v5    # "argc":I
    aget-object v3, p1, v4

    move v1, v5

    goto :goto_4

    .line 172
    .end local v5    # "argc":I
    .restart local v4    # "argc":I
    :cond_a
    const-string v5, "-netProps requires an argument"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto :goto_3

    .line 175
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a valid argument"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 177
    .end local v1    # "thisArg":Ljava/lang/String;
    :goto_3
    move v1, v4

    .end local v4    # "argc":I
    .local v1, "argc":I
    :goto_4
    goto/16 :goto_0

    .line 179
    :cond_c
    iget v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    if-gtz v4, :cond_d

    .line 180
    const-string v4, "-socketTimeout requires a positive integer number"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 184
    :cond_d
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v4

    .line 185
    .local v4, "repNetConfig":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    if-eqz v3, :cond_e

    .line 187
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v5}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v0

    .line 195
    :goto_5
    goto :goto_6

    .line 192
    :catch_2
    move-exception v5

    .line 193
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " is not valid: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    goto :goto_6

    .line 189
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 190
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " does not exist: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_5

    .line 198
    :cond_e
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->nodeName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->groupName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_10

    .line 199
    :cond_f
    const-string v0, "Node name, group name and the node host port are mandatory arguments, please configure."

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/util/DbPing;->printUsage(Ljava/lang/String;)V

    .line 203
    :cond_10
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->nodeName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/sleepycat/je/rep/util/DbPing;->initializeFactory(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/DataChannelFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/DbPing;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 204
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    if-eqz p1, :cond_0

    .line 107
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/util/DbPing;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 112
    return-void
.end method


# virtual methods
.method public getNodeState()Lcom/sleepycat/je/rep/NodeState;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NOCHECK:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 305
    .local v0, "protocol":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;
    const/4 v1, 0x0

    .line 309
    .local v1, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbPing;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketAddress:Ljava/net/InetSocketAddress;

    new-instance v5, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v5}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    const/4 v6, 0x1

    .line 313
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v5

    iget v6, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    .line 314
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v5

    iget v6, p0, Lcom/sleepycat/je/rep/util/DbPing;->socketTimeout:I

    .line 315
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v5

    .line 309
    invoke-interface {v3, v4, v2, v5}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    move-object v1, v2

    .line 316
    const-string v2, "BinaryNodeState"

    .line 317
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 320
    new-instance v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/DbPing;->nodeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/DbPing;->groupName:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateRequest;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 325
    const-class v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;

    .line 328
    .local v2, "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;->convertToNodeState()Lcom/sleepycat/je/rep/NodeState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    if-eqz v1, :cond_0

    .line 331
    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 328
    :cond_0
    return-object v3

    .line 330
    .end local v2    # "response":Lcom/sleepycat/je/rep/impl/BinaryNodeStateProtocol$BinaryNodeStateResponse;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 331
    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    :cond_1
    throw v2
.end method
