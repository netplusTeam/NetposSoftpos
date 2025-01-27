.class public Ljavassist/ByteArrayClassPath;
.super Ljava/lang/Object;
.source "ByteArrayClassPath.java"

# interfaces
.implements Ljavassist/ClassPath;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/ByteArrayClassPath$BytecodeURLConnection;,
        Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;
    }
.end annotation


# instance fields
.field protected classfile:[B

.field protected classname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classfile"    # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljavassist/ByteArrayClassPath;->classname:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Ljavassist/ByteArrayClassPath;->classfile:[B

    .line 67
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .param p1, "classname"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Ljavassist/ByteArrayClassPath;->classname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "cname":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:/ByteArrayClassPath/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;

    invoke-direct {v4, p0, v1}, Ljavassist/ByteArrayClassPath$BytecodeURLStreamHandler;-><init>(Ljavassist/ByteArrayClassPath;Ljavassist/ByteArrayClassPath$1;)V

    invoke-direct {v2, v1, v3, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    :catch_0
    move-exception v2

    .line 97
    .end local v0    # "cname":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public openClassfile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Ljavassist/ByteArrayClassPath;->classname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavassist/ByteArrayClassPath;->classfile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte[]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/ByteArrayClassPath;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
