.class public Lcom/sleepycat/je/dbi/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# static fields
.field private static final ALL_OPS:[Lcom/sleepycat/je/dbi/Operation;

.field private static final MAX_OP:B = 0x3t

.field private static final MIN_OP:B = 0x1t

.field public static final NO_OVERWRITE:Lcom/sleepycat/je/dbi/Operation;

.field public static final PLACEHOLDER:Lcom/sleepycat/je/dbi/Operation;

.field public static final PUT:Lcom/sleepycat/je/dbi/Operation;


# instance fields
.field private name:Ljava/lang/String;

.field private op:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lcom/sleepycat/je/dbi/Operation;

    const/4 v1, 0x1

    const-string v2, "PUT"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/dbi/Operation;-><init>(BLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/Operation;->PUT:Lcom/sleepycat/je/dbi/Operation;

    .line 28
    new-instance v2, Lcom/sleepycat/je/dbi/Operation;

    const/4 v3, 0x2

    const-string v4, "NO_OVERWRITE"

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/dbi/Operation;-><init>(BLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/Operation;->NO_OVERWRITE:Lcom/sleepycat/je/dbi/Operation;

    .line 30
    new-instance v4, Lcom/sleepycat/je/dbi/Operation;

    const/4 v5, 0x3

    const-string v6, "PLACEHOLDER"

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/dbi/Operation;-><init>(BLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/Operation;->PLACEHOLDER:Lcom/sleepycat/je/dbi/Operation;

    .line 33
    new-array v5, v5, [Lcom/sleepycat/je/dbi/Operation;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    sput-object v5, Lcom/sleepycat/je/dbi/Operation;->ALL_OPS:[Lcom/sleepycat/je/dbi/Operation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "op"    # B
    .param p2, "name"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-byte p1, p0, Lcom/sleepycat/je/dbi/Operation;->op:B

    .line 47
    iput-object p2, p0, Lcom/sleepycat/je/dbi/Operation;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static readFromBuffer(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/dbi/Operation;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 64
    .local v0, "opNum":B
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 66
    sget-object v1, Lcom/sleepycat/je/dbi/Operation;->ALL_OPS:[Lcom/sleepycat/je/dbi/Operation;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Lcom/sleepycat/je/dbi/Operation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/dbi/Operation;-><init>(BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sleepycat/je/dbi/Operation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 59
    iget-byte v0, p0, Lcom/sleepycat/je/dbi/Operation;->op:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method
