.class Ljavassist/bytecode/MethodTypeInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# static fields
.field static final tag:I = 0x10


# instance fields
.field descriptor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "desc"    # I
    .param p2, "index"    # I

    .line 2251
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2252
    iput p1, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    .line 2253
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2259
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    .line 2260
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljavassist/bytecode/ConstPool;Ljava/util/Map;)I
    .locals 2
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

    .line 2311
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 2312
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2313
    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/ConstPool;->addMethodTypeInfo(I)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2268
    instance-of v0, p1, Ljavassist/bytecode/MethodTypeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2269
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/MethodTypeInfo;

    iget v0, v0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    iget v2, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2270
    :cond_1
    return v1
.end method

.method public getTag()I
    .locals 1

    .line 2274
    const/16 v0, 0x10

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2263
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2325
    const-string v0, "MethodType #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2326
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2327
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;)V"
        }
    .end annotation

    .line 2280
    .local p4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 2281
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2282
    .local v1, "desc2":Ljava/lang/String;
    if-eq v0, v1, :cond_1

    .line 2283
    if-nez p4, :cond_0

    .line 2284
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    goto :goto_0

    .line 2286
    :cond_0
    invoke-interface {p4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2287
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    .line 2288
    invoke-interface {p4, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    :cond_1
    :goto_0
    return-void
.end method

.method public renameClass(Ljavassist/bytecode/ConstPool;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljavassist/bytecode/ConstInfo;",
            "Ljavassist/bytecode/ConstInfo;",
            ">;)V"
        }
    .end annotation

    .line 2296
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljavassist/bytecode/ConstInfo;Ljavassist/bytecode/ConstInfo;>;"
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 2297
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 2298
    .local v1, "desc2":Ljava/lang/String;
    if-eq v0, v1, :cond_1

    .line 2299
    if-nez p3, :cond_0

    .line 2300
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    goto :goto_0

    .line 2302
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    invoke-virtual {p1, v1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    .line 2304
    invoke-interface {p3, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    :cond_1
    :goto_0
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

    .line 2319
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 2320
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2321
    return-void
.end method
