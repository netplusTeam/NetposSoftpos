.class public Ljavassist/Loader$Simple;
.super Ljava/lang/ClassLoader;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parent"    # Ljava/lang/ClassLoader;

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 171
    return-void
.end method


# virtual methods
.method public invokeDefineClass(Ljavassist/CtClass;)Ljava/lang/Class;
    .locals 4
    .param p1, "cc"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljavassist/CtClass;->toBytecode()[B

    move-result-object v0

    .line 179
    .local v0, "code":[B
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Ljavassist/Loader$Simple;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method
