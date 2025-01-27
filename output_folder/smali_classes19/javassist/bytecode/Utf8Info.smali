.class Ljavassist/bytecode/Utf8Info;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x1


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2144
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    .line 2146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "utf8"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 2137
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2138
    iput-object p1, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    .line 2139
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 1
    .param p1, "src"    # Ljavassist/bytecode/ConstPool;
    .param p2, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2166
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2155
    instance-of v0, p1, Ljavassist/bytecode/Utf8Info;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/Utf8Info;

    iget-object v0, v0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    iget-object v1, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    .line 2156
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2155
    :goto_0
    return v0
.end method

.method public getTag()I
    .locals 1

    .line 2160
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2150
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2179
    const-string v0, "UTF8 \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2173
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2174
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2175
    return-void
.end method
