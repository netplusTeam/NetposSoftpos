.class public Lorg/jline/builtins/ssh/ShellFactoryImpl;
.super Ljava/lang/Object;
.source "ShellFactoryImpl.java"

# interfaces
.implements Lorg/apache/sshd/common/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/Factory<",
        "Lorg/apache/sshd/server/command/Command;",
        ">;"
    }
.end annotation


# instance fields
.field private final shell:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ShellParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/jline/builtins/ssh/Ssh$ShellParams;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "shell":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jline/builtins/ssh/Ssh$ShellParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl;->shell:Ljava/util/function/Consumer;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lorg/jline/builtins/ssh/ShellFactoryImpl;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lorg/jline/builtins/ssh/ShellFactoryImpl;

    .line 39
    iget-object v0, p0, Lorg/jline/builtins/ssh/ShellFactoryImpl;->shell:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$100([Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # [Ljava/io/OutputStream;

    .line 39
    invoke-static {p0}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->flush([Ljava/io/OutputStream;)V

    return-void
.end method

.method static varargs close([Ljava/io/Closeable;)V
    .locals 4
    .param p0, "closeables"    # [Ljava/io/Closeable;

    .line 57
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 59
    .local v2, "c":Ljava/io/Closeable;
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 57
    .end local v2    # "c":Ljava/io/Closeable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private static varargs flush([Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "streams"    # [Ljava/io/OutputStream;

    .line 47
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 49
    .local v2, "s":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_1

    .line 50
    :catch_0
    move-exception v3

    .line 47
    .end local v2    # "s":Ljava/io/OutputStream;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/jline/builtins/ssh/ShellFactoryImpl;->create()Lorg/apache/sshd/server/command/Command;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/server/command/Command;
    .locals 1

    .line 67
    new-instance v0, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;

    invoke-direct {v0, p0}, Lorg/jline/builtins/ssh/ShellFactoryImpl$ShellImpl;-><init>(Lorg/jline/builtins/ssh/ShellFactoryImpl;)V

    return-object v0
.end method
