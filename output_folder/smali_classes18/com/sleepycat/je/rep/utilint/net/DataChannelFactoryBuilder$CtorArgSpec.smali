.class Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;
.super Ljava/lang/Object;
.source "DataChannelFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CtorArgSpec"
.end annotation


# instance fields
.field private final argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final argValues:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "argValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 332
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->argTypes:[Ljava/lang/Class;

    .line 334
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->argValues:[Ljava/lang/Object;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)[Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;

    .line 328
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;

    .line 328
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;->argValues:[Ljava/lang/Object;

    return-object v0
.end method
