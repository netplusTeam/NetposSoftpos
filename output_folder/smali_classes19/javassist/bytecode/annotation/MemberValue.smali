.class public abstract Ljavassist/bytecode/annotation/MemberValue;
.super Ljava/lang/Object;
.source "MemberValue.java"


# instance fields
.field cp:Ljavassist/bytecode/ConstPool;

.field tag:C


# direct methods
.method constructor <init>(CLjavassist/bytecode/ConstPool;)V
    .locals 0
    .param p1, "tag"    # C
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Ljavassist/bytecode/annotation/MemberValue;->cp:Ljavassist/bytecode/ConstPool;

    .line 39
    iput-char p1, p0, Ljavassist/bytecode/annotation/MemberValue;->tag:C

    .line 40
    return-void
.end method

.method private static convertFromArray(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "classname"    # Ljava/lang/String;

    .line 64
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 65
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 66
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "rawType":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-static {v4}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    if-eq v1, v2, :cond_0

    .line 69
    const-string v6, "["

    invoke-virtual {v5, v3, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    .end local v4    # "rawType":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    return-object p0
.end method

.method static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavassist/bytecode/annotation/NoSuchClassError;
        }
    .end annotation

    .line 55
    :try_start_0
    invoke-static {p1}, Ljavassist/bytecode/annotation/MemberValue;->convertFromArray(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/LinkageError;
    new-instance v1, Ljavassist/bytecode/annotation/NoSuchClassError;

    invoke-direct {v1, p1, v0}, Ljavassist/bytecode/annotation/NoSuchClassError;-><init>(Ljava/lang/String;Ljava/lang/Error;)V

    throw v1
.end method


# virtual methods
.method public abstract accept(Ljavassist/bytecode/annotation/MemberValueVisitor;)V
.end method

.method abstract getType(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method abstract getValue(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method public abstract write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
