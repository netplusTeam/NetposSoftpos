.class public final enum Lcom/sleepycat/je/log/entry/DbOperationType;
.super Ljava/lang/Enum;
.source "DbOperationType.java"

# interfaces
.implements Lcom/sleepycat/je/log/VersionedWriteLoggable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/log/entry/DbOperationType;",
        ">;",
        "Lcom/sleepycat/je/log/VersionedWriteLoggable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/log/entry/DbOperationType;

.field public static final enum CREATE:Lcom/sleepycat/je/log/entry/DbOperationType;

.field private static final LAST_FORMAT_CHANGE:I = 0x8

.field public static final enum NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

.field public static final enum REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

.field public static final enum RENAME:Lcom/sleepycat/je/log/entry/DbOperationType;

.field public static final enum TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

.field public static final enum UPDATE_CONFIG:Lcom/sleepycat/je/log/entry/DbOperationType;


# instance fields
.field private value:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 31
    new-instance v0, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 32
    new-instance v1, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v3, "CREATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->CREATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 33
    new-instance v3, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v5, "REMOVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/sleepycat/je/log/entry/DbOperationType;->REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 34
    new-instance v5, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v7, "TRUNCATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 35
    new-instance v7, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v9, "RENAME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v7, Lcom/sleepycat/je/log/entry/DbOperationType;->RENAME:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 36
    new-instance v9, Lcom/sleepycat/je/log/entry/DbOperationType;

    const-string v11, "UPDATE_CONFIG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sleepycat/je/log/entry/DbOperationType;-><init>(Ljava/lang/String;IB)V

    sput-object v9, Lcom/sleepycat/je/log/entry/DbOperationType;->UPDATE_CONFIG:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 29
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sleepycat/je/log/entry/DbOperationType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/sleepycat/je/log/entry/DbOperationType;->$VALUES:[Lcom/sleepycat/je/log/entry/DbOperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-byte p3, p0, Lcom/sleepycat/je/log/entry/DbOperationType;->value:B

    .line 49
    return-void
.end method

.method public static isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z
    .locals 1
    .param p0, "opType"    # Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 151
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->CREATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->UPDATE_CONFIG:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static readTypeFromLog(Ljava/nio/ByteBuffer;I)Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 2
    .param p0, "entryBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "entryVersion"    # I

    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 55
    .local v0, "opVal":B
    packed-switch v0, :pswitch_data_0

    .line 73
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    .line 69
    :pswitch_0
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->UPDATE_CONFIG:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    .line 66
    :pswitch_1
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->RENAME:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    .line 63
    :pswitch_2
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    .line 60
    :pswitch_3
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    .line 57
    :pswitch_4
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->CREATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 29
    const-class v0, Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 1

    .line 29
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->$VALUES:[Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v0}, [Lcom/sleepycat/je/log/entry/DbOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v0
.end method


# virtual methods
.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 130
    const-string v0, "<DbOp val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    return-void
.end method

.method public getEmbeddedLoggables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sleepycat/je/log/VersionedWriteLoggable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFormatChange()I
    .locals 1

    .line 80
    const/16 v0, 0x8

    return v0
.end method

.method public getLogSize()I
    .locals 2

    .line 90
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->getLogSize(IZ)I

    move-result v0

    return v0
.end method

.method public getLogSize(IZ)I
    .locals 1
    .param p1, "logVersion"    # I
    .param p2, "forReplication"    # Z

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasReplicationFormat()Z
    .locals 1

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public isReplicationFormatWorthwhile(Ljava/nio/ByteBuffer;II)Z
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "srcVersion"    # I
    .param p3, "destVersion"    # I

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 140
    instance-of v0, p1, Lcom/sleepycat/je/log/entry/DbOperationType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    return v1

    .line 143
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/je/log/entry/DbOperationType;->value:B

    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/log/entry/DbOperationType;

    iget-byte v2, v2, Lcom/sleepycat/je/log/entry/DbOperationType;->value:B

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 113
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/je/log/entry/DbOperationType;->value:B

    .line 114
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 95
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sleepycat/je/log/entry/DbOperationType;->writeToLog(Ljava/nio/ByteBuffer;IZ)V

    .line 97
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;IZ)V
    .locals 1
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "logVersion"    # I
    .param p3, "forReplication"    # Z

    .line 108
    iget-byte v0, p0, Lcom/sleepycat/je/log/entry/DbOperationType;->value:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    return-void
.end method
