.class Ljavassist/CtMethod$StringConstParameter;
.super Ljavassist/CtMethod$ConstParameter;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringConstParameter"
.end annotation


# instance fields
.field param:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 441
    invoke-direct {p0}, Ljavassist/CtMethod$ConstParameter;-><init>()V

    .line 442
    iput-object p1, p0, Ljavassist/CtMethod$StringConstParameter;->param:Ljava/lang/String;

    .line 443
    return-void
.end method


# virtual methods
.method compile(Ljavassist/bytecode/Bytecode;)I
    .locals 1
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 447
    iget-object v0, p0, Ljavassist/CtMethod$StringConstParameter;->param:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method constDescriptor()Ljava/lang/String;
    .locals 1

    .line 458
    const-string v0, "([Ljava/lang/Object;Ljava/lang/String;)V"

    return-object v0
.end method

.method descriptor()Ljava/lang/String;
    .locals 1

    .line 453
    const-string v0, "([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;"

    return-object v0
.end method
