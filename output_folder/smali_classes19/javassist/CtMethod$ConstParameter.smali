.class public Ljavassist/CtMethod$ConstParameter;
.super Ljava/lang/Object;
.source "CtMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/CtMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defaultConstDescriptor()Ljava/lang/String;
    .locals 1

    .line 386
    const-string v0, "([Ljava/lang/Object;)V"

    return-object v0
.end method

.method static defaultDescriptor()Ljava/lang/String;
    .locals 1

    .line 370
    const-string v0, "([Ljava/lang/Object;)Ljava/lang/Object;"

    return-object v0
.end method

.method public static integer(I)Ljavassist/CtMethod$ConstParameter;
    .locals 1
    .param p0, "i"    # I

    .line 332
    new-instance v0, Ljavassist/CtMethod$IntConstParameter;

    invoke-direct {v0, p0}, Ljavassist/CtMethod$IntConstParameter;-><init>(I)V

    return-object v0
.end method

.method public static integer(J)Ljavassist/CtMethod$ConstParameter;
    .locals 1
    .param p0, "i"    # J

    .line 341
    new-instance v0, Ljavassist/CtMethod$LongConstParameter;

    invoke-direct {v0, p0, p1}, Ljavassist/CtMethod$LongConstParameter;-><init>(J)V

    return-object v0
.end method

.method public static string(Ljava/lang/String;)Ljavassist/CtMethod$ConstParameter;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 350
    new-instance v0, Ljavassist/CtMethod$StringConstParameter;

    invoke-direct {v0, p0}, Ljavassist/CtMethod$StringConstParameter;-><init>(Ljava/lang/String;)V

    return-object v0
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

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method constDescriptor()Ljava/lang/String;
    .locals 1

    .line 379
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultConstDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method descriptor()Ljava/lang/String;
    .locals 1

    .line 363
    invoke-static {}, Ljavassist/CtMethod$ConstParameter;->defaultDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
