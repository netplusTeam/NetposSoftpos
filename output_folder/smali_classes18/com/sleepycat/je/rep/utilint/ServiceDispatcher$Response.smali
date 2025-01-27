.class public final enum Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
.super Ljava/lang/Enum;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum AUTHENTICATE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum BUSY:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum PROCEED:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field public static final enum UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 139
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v3, "BUSY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->BUSY:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v5, "FORMAT_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->FORMAT_ERROR:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v7, "UNKNOWN_SERVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->UNKNOWN_SERVICE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v7, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v9, "PROCEED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->PROCEED:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v9, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v11, "INVALID"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->INVALID:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    new-instance v11, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    const-string v13, "AUTHENTICATE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->AUTHENTICATE:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 137
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->$VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static get(I)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 1
    .param p0, "ordinal"    # I

    .line 149
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->values()[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 150
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->values()[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 137
    const-class v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 1

    .line 137
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->$VALUES:[Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v0}, [Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v0
.end method


# virtual methods
.method byteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 143
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->ordinal()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 145
    return-object v0
.end method
