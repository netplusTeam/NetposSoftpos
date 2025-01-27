.class public Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
.super Ljava/lang/Object;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOp"
.end annotation


# instance fields
.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final opId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "opId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$Message;",
            ">;)V"
        }
    .end annotation

    .line 288
    .local p2, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sleepycat/je/rep/impl/TextProtocol$Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->opId:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->messageClass:Ljava/lang/Class;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    .line 280
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->opId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$Message;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method getOpId()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->opId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;->opId:Ljava/lang/String;

    return-object v0
.end method
