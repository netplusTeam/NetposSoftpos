.class public Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOp"
.end annotation


# instance fields
.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/String;

.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final opId:S


# direct methods
.method public constructor <init>(SLjava/lang/Class;)V
    .locals 3
    .param p1, "opId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p2, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-short p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->opId:S

    .line 362
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->messageClass:Ljava/lang/Class;

    .line 363
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->label:Ljava/lang/String;

    .line 365
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 366
    invoke-virtual {p2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/nio/ByteBuffer;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    nop

    .line 372
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 367
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;)S
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    .line 347
    iget-short v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->opId:S

    return v0
.end method


# virtual methods
.method public getConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getOpId()S
    .locals 1

    .line 375
    iget-short v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->opId:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;->label:Ljava/lang/String;

    return-object v0
.end method
