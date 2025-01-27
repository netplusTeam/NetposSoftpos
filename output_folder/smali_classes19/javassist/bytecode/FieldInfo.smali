.class public final Ljavassist/bytecode/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# instance fields
.field accessFlags:I

.field attribute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field cachedName:Ljava/lang/String;

.field cachedType:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field descriptor:I

.field name:I


# direct methods
.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 52
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 72
    invoke-direct {p0, p2}, Ljavassist/bytecode/FieldInfo;->read(Ljava/io/DataInputStream;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 65
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 66
    iput-object p2, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 68
    return-void
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    .line 273
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 274
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 275
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 276
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 278
    iget-object v2, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    iget-object v3, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/AttributeInfo;

    .line 264
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 267
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 268
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method compact(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 92
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 93
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 94
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/List;Ljavassist/bytecode/ConstPool;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 95
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 96
    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 165
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 138
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getConstantValue()I
    .locals 2

    .line 203
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return v1

    .line 206
    :cond_0
    nop

    .line 207
    const-string v0, "ConstantValue"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ConstantAttribute;

    .line 208
    .local v0, "attr":Ljavassist/bytecode/ConstantAttribute;
    if-nez v0, :cond_1

    .line 209
    return v1

    .line 210
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/ConstantAttribute;->getConstantValue()I

    move-result v1

    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 183
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/FieldInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method prune(Ljavassist/bytecode/ConstPool;)V
    .locals 7
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, "newAttributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    nop

    .line 101
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v1}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 102
    .local v1, "invisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    nop

    .line 108
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v3}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 109
    .local v3, "visibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {v3, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    nop

    .line 115
    const-string v4, "Signature"

    invoke-virtual {p0, v4}, Ljavassist/bytecode/FieldInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 116
    .local v4, "signature":Ljavassist/bytecode/AttributeInfo;
    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v4, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 118
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getConstantValue()I

    move-result v5

    .line 122
    .local v5, "index":I
    if-eqz v5, :cond_3

    .line 123
    iget-object v6, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v6, v5, p1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v5

    .line 124
    new-instance v2, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v2, p1, v5}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_3
    iput-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    .line 128
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 129
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 130
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 131
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 254
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    return-object v0
.end method

.method public setAccessFlags(I)V
    .locals 0
    .param p1, "acc"    # I

    .line 174
    iput p1, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    .line 175
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    .line 194
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    .line 156
    iput-object p1, p0, Ljavassist/bytecode/FieldInfo;->cachedName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 283
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 284
    iget v0, p0, Ljavassist/bytecode/FieldInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 285
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 289
    iget-object v0, p0, Ljavassist/bytecode/FieldInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 291
    :goto_0
    return-void
.end method
