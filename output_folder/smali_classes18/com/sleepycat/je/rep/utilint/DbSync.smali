.class public Lcom/sleepycat/je/rep/utilint/DbSync;
.super Ljava/lang/Object;
.source "DbSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;
    }
.end annotation


# static fields
.field public static final DBSYNC_ENV:Ljava/lang/String; = "-env"

.field public static final DBSYNC_GROUP_NAME:Ljava/lang/String; = "-groupName"

.field public static final DBSYNC_HELPER_HOST:Ljava/lang/String; = "-helperHost"

.field public static final DBSYNC_NET_PROPS:Ljava/lang/String; = "-netProps"

.field public static final DBSYNC_NODE_HOST:Ljava/lang/String; = "-nodeHost"

.field public static final DBSYNC_NODE_NAME:Ljava/lang/String; = "-nodeName"

.field public static final DBSYNC_TIMEOUT:Ljava/lang/String; = "-timeout"

.field private static final FORMAT:Ljava/lang/String; = "%1$-15s"

.field private static final usageString:Ljava/lang/String;


# instance fields
.field private envConfig:Lcom/sleepycat/je/EnvironmentConfig;

.field private envHome:Ljava/lang/String;

.field private helperHost:Ljava/lang/String;

.field private repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

.field private timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/utilint/DbSync;

    .line 69
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "-env"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 70
    const-string v3, "%1$-15s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "# environment home directory for the node\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "-groupName"

    aput-object v5, v2, v4

    .line 72
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "# name of the replication group\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "-nodeName"

    aput-object v5, v2, v4

    .line 74
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "# name of the node in the group\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "-nodeHost"

    aput-object v5, v2, v4

    .line 76
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "# host name or IP address and port number for the node\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "-helperHost"

    aput-object v5, v2, v4

    .line 78
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "# helperHost for the node\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "-timeout"

    aput-object v2, v1, v4

    .line 80
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "# time for the node to catch up with master, in milliseconds\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/DbSync;->usageString:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/rep/ReplicationConfig;Ljava/lang/String;J)V
    .locals 0
    .param p1, "envHome"    # Ljava/lang/String;
    .param p2, "envConfig"    # Lcom/sleepycat/je/EnvironmentConfig;
    .param p3, "repConfig"    # Lcom/sleepycat/je/rep/ReplicationConfig;
    .param p4, "helperHost"    # Ljava/lang/String;
    .param p5, "timeout"    # J

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envHome:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 235
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 236
    iput-object p4, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->helperHost:Ljava/lang/String;

    .line 237
    iput-wide p5, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->timeout:J

    .line 238
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/DbSync;)Lcom/sleepycat/je/rep/ReplicationConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/DbSync;

    .line 50
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/sleepycat/je/rep/utilint/DbSync;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/DbSync;-><init>()V

    .line 87
    .local v0, "syncup":Lcom/sleepycat/je/rep/utilint/DbSync;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/utilint/DbSync;->parseArgs([Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/DbSync;->sync()V

    .line 89
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "argc":I
    array-length v1, p1

    .line 103
    .local v1, "nArgs":I
    const/4 v2, 0x0

    .line 104
    .local v2, "nodeName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, "nodeHost":Ljava/lang/String;
    const/4 v4, 0x0

    .line 106
    .local v4, "groupName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 108
    .local v5, "netPropsName":Ljava/lang/String;
    :goto_0
    if-ge v0, v1, :cond_e

    .line 109
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "argc":I
    .local v6, "argc":I
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "thisArg":Ljava/lang/String;
    const-string v7, "-env"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    if-ge v6, v1, :cond_0

    .line 112
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .local v7, "argc":I
    aget-object v6, p1, v6

    iput-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envHome:Ljava/lang/String;

    move v0, v7

    goto/16 :goto_2

    .line 114
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_0
    const-string v7, "-env requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 116
    :cond_1
    const-string v7, "-groupName"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 117
    if-ge v6, v1, :cond_2

    .line 118
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v4, p1, v6

    move v0, v7

    goto/16 :goto_2

    .line 120
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_2
    const-string v7, "-groupName requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 122
    :cond_3
    const-string v7, "-nodeName"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 123
    if-ge v6, v1, :cond_4

    .line 124
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v2, p1, v6

    move v0, v7

    goto/16 :goto_2

    .line 126
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_4
    const-string v7, "-nodeName requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_5
    const-string v7, "-nodeHost"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 129
    if-ge v6, v1, :cond_6

    .line 130
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v3, p1, v6

    move v0, v7

    goto :goto_2

    .line 132
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_6
    const-string v7, "-nodeHost requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_7
    const-string v7, "-helperHost"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 135
    if-ge v6, v1, :cond_8

    .line 136
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v6, p1, v6

    iput-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->helperHost:Ljava/lang/String;

    move v0, v7

    goto :goto_2

    .line 138
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_8
    const-string v7, "-helperHost requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :cond_9
    const-string v7, "-timeout"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 141
    if-ge v6, v1, :cond_a

    .line 142
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->timeout:J

    move v0, v7

    goto :goto_2

    .line 144
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_a
    const-string v7, "-timeout requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_b
    const-string v7, "-netProps"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 147
    if-ge v6, v1, :cond_c

    .line 148
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "argc":I
    .restart local v7    # "argc":I
    aget-object v5, p1, v6

    move v0, v7

    goto :goto_2

    .line 150
    .end local v7    # "argc":I
    .restart local v6    # "argc":I
    :cond_c
    const-string v7, "-netProps requires an argument"

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 153
    .end local v0    # "thisArg":Ljava/lang/String;
    :cond_d
    :goto_1
    move v0, v6

    .end local v6    # "argc":I
    .local v0, "argc":I
    :goto_2
    goto/16 :goto_0

    .line 155
    :cond_e
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envHome:Ljava/lang/String;

    if-nez v6, :cond_f

    .line 156
    const-string v6, "-env is a required argument."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 159
    :cond_f
    if-nez v4, :cond_10

    .line 160
    const-string v6, "-groupName is a required argument."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 163
    :cond_10
    if-nez v2, :cond_11

    .line 164
    const-string v6, "-nodeName is a required argument."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 167
    :cond_11
    if-nez v3, :cond_12

    .line 168
    const-string v6, "-nodeHost is a required argument."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 171
    :cond_12
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->helperHost:Ljava/lang/String;

    if-nez v6, :cond_13

    .line 172
    const-string v6, "-helperHost is a required argument."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 175
    :cond_13
    iget-wide v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->timeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_14

    .line 176
    const-string v6, "-timeout should be a positive long number."

    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 180
    :cond_14
    :try_start_0
    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->NODE_HOST_PORT:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v6, v3}, Lcom/sleepycat/je/config/ConfigParam;->validateValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_3

    .line 181
    :catch_0
    move-exception v6

    .line 182
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 183
    const-string v7, "Host and Port pair for this node is illegal."

    invoke-direct {p0, v7}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .line 187
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-static {}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->createDefault()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v6

    .line 188
    .local v6, "repNetConfig":Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    if-eqz v5, :cond_15

    .line 190
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-static {v7}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->create(Ljava/io/File;)Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 198
    :goto_4
    goto :goto_5

    .line 195
    :catch_1
    move-exception v7

    .line 196
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The net properties file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not valid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 197
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-direct {p0, v8}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    goto :goto_5

    .line 192
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 193
    .local v7, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The netProps file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sleepycat/je/rep/utilint/DbSync;->printUsage(Ljava/lang/String;)V

    .end local v7    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 201
    :cond_15
    :goto_5
    new-instance v7, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v7}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    iput-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    .line 202
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 203
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 205
    new-instance v7, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v7}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>()V

    iput-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 206
    invoke-virtual {v7, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 207
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-virtual {v7, v4}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 208
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-virtual {v7, v3}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 209
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->helperHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 211
    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-virtual {v7, v6}, Lcom/sleepycat/je/rep/ReplicationConfig;->setRepNetConfig(Lcom/sleepycat/je/rep/ReplicationNetworkConfig;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 213
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 92
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/DbSync;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public sync()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->ALL:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    .line 256
    .local v0, "durability":Lcom/sleepycat/je/Durability;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 257
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->helperHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 260
    new-instance v1, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;-><init>(Lcom/sleepycat/je/rep/utilint/DbSync;Lcom/sleepycat/je/rep/utilint/DbSync$1;)V

    .line 261
    .local v1, "listener":Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;
    const/4 v3, 0x0

    .line 263
    .local v3, "repEnv":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    :try_start_0
    new-instance v10, Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    new-instance v5, Ljava/io/File;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envHome:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->envConfig:Lcom/sleepycat/je/EnvironmentConfig;

    const/4 v8, 0x0

    sget-object v9, Lcom/sleepycat/je/rep/QuorumPolicy;->ALL:Lcom/sleepycat/je/rep/QuorumPolicy;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;-><init>(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;Lcom/sleepycat/je/ReplicaConsistencyPolicy;Lcom/sleepycat/je/rep/QuorumPolicy;)V

    move-object v3, v10

    .line 268
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->setStateChangeListener(Lcom/sleepycat/je/rep/StateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 269
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t successfully initialize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->repConfig:Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 271
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/ReplicationConfig;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " because of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 276
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/DbSync$StatusListener;->awaitActiveState()V

    .line 278
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isMaster()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {v3, v2, v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->beginTransaction(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/TransactionConfig;)Lcom/sleepycat/je/Transaction;

    move-result-object v2

    .line 286
    .local v2, "txn":Lcom/sleepycat/je/Transaction;
    invoke-virtual {v2}, Lcom/sleepycat/je/Transaction;->abort()V

    .line 289
    iget-wide v4, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->timeout:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->shutdownGroup(JLjava/util/concurrent/TimeUnit;)V

    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    goto :goto_2

    .line 290
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->isReplica()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_1
    iget-wide v6, p0, Lcom/sleepycat/je/rep/utilint/DbSync;->timeout:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 299
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    .line 300
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/GroupShutdownException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    nop

    .line 291
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1

    .line 301
    :catch_1
    move-exception v2

    .line 302
    .local v2, "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    goto :goto_3

    .line 290
    .end local v2    # "e":Lcom/sleepycat/je/rep/GroupShutdownException;
    .end local v4    # "i":J
    :cond_1
    :goto_2
    nop

    .line 308
    :cond_2
    :goto_3
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 309
    return-void
.end method
