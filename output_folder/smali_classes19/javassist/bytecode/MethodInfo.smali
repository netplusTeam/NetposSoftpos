.class public Ljavassist/bytecode/MethodInfo;
.super Ljava/lang/Object;
.source "MethodInfo.java"


# static fields
.field public static doPreverify:Z = false

.field public static final nameClinit:Ljava/lang/String; = "<clinit>"

.field public static final nameInit:Ljava/lang/String; = "<init>"


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

.field constPool:Ljavassist/bytecode/ConstPool;

.field descriptor:I

.field name:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/bytecode/MethodInfo;->doPreverify:Z

    return-void
.end method

.method private constructor <init>(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 85
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

    .line 108
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 109
    invoke-direct {p0, p2}, Ljavassist/bytecode/MethodInfo;->read(Ljava/io/DataInputStream;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "methodname"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 102
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 103
    iput-object p2, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 105
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/Map;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "methodname"    # Ljava/lang/String;
    .param p3, "src"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/MethodInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 134
    .local p4, "classnameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 135
    invoke-direct {p0, p3, p2, p4}, Ljavassist/bytecode/MethodInfo;->read(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/util/Map;)V

    .line 136
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

    .line 562
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 563
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 564
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 565
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 566
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 568
    iget-object v2, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    iget-object v3, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private read(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "src"    # Ljavassist/bytecode/MethodInfo;
    .param p2, "methodname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p3, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 543
    .local v0, "destCp":Ljavassist/bytecode/ConstPool;
    iget v1, p1, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    iput v1, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 544
    invoke-virtual {v0, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 545
    iput-object p2, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 546
    iget-object v1, p1, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 547
    .local v1, "srcCp":Ljavassist/bytecode/ConstPool;
    iget v2, p1, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "desc":Ljava/lang/String;
    invoke-static {v2, p3}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "desc2":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 551
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 552
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v4

    .line 553
    .local v4, "eattr":Ljavassist/bytecode/ExceptionsAttribute;
    if-eqz v4, :cond_0

    .line 554
    iget-object v5, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-virtual {v4, v0, p3}, Ljavassist/bytecode/ExceptionsAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v5

    .line 557
    .local v5, "cattr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v5, :cond_1

    .line 558
    iget-object v6, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-virtual {v5, v0, p3}, Ljavassist/bytecode/CodeAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/AttributeInfo;

    .line 351
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 354
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 355
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method compact(Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 155
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 156
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 157
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/List;Ljavassist/bytecode/ConstPool;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 158
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 159
    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 268
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

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

    .line 310
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 313
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    return-object v0
.end method

.method public getCodeAttribute()Ljavassist/bytecode/CodeAttribute;
    .locals 2

    .line 375
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    const-string v1, "Code"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 376
    .local v0, "info":Ljavassist/bytecode/AttributeInfo;
    move-object v1, v0

    check-cast v1, Ljavassist/bytecode/CodeAttribute;

    return-object v1
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 245
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;
    .locals 2

    .line 364
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    const-string v1, "Exceptions"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 366
    .local v0, "info":Ljavassist/bytecode/AttributeInfo;
    move-object v1, v0

    check-cast v1, Ljavassist/bytecode/ExceptionsAttribute;

    return-object v1
.end method

.method public getLineNumber(I)I
    .locals 3
    .param p1, "pos"    # I

    .line 490
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 491
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 492
    return v1

    .line 494
    :cond_0
    nop

    .line 495
    const-string v2, "LineNumberTable"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeAttribute;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/LineNumberAttribute;

    .line 496
    .local v2, "ainfo":Ljavassist/bytecode/LineNumberAttribute;
    if-nez v2, :cond_1

    .line 497
    return v1

    .line 499
    :cond_1
    invoke-virtual {v2, p1}, Ljavassist/bytecode/LineNumberAttribute;->toLineNumber(I)I

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 218
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/MethodInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    return-object v0
.end method

.method public isConstructor()Z
    .locals 2

    .line 252
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMethod()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "n":Ljava/lang/String;
    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStaticInitializer()Z
    .locals 2

    .line 259
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method prune(Ljavassist/bytecode/ConstPool;)V
    .locals 9
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "newAttributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    nop

    .line 165
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 166
    .local v1, "invisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_0
    nop

    .line 172
    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v3}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 173
    .local v3, "visibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v3, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    .line 175
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    nop

    .line 179
    const-string v4, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {p0, v4}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 180
    .local v4, "parameterInvisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {v4, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 182
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    nop

    .line 186
    const-string v5, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {p0, v5}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    .line 187
    .local v5, "parameterVisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v5, :cond_3

    .line 188
    invoke-virtual {v5, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    .line 189
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3
    nop

    .line 193
    const-string v6, "AnnotationDefault"

    invoke-virtual {p0, v6}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/AnnotationDefaultAttribute;

    .line 194
    .local v6, "defaultAttribute":Ljavassist/bytecode/AnnotationDefaultAttribute;
    if-eqz v6, :cond_4

    .line 195
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getExceptionsAttribute()Ljavassist/bytecode/ExceptionsAttribute;

    move-result-object v7

    .line 198
    .local v7, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    if-eqz v7, :cond_5

    .line 199
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_5
    nop

    .line 202
    const-string v8, "Signature"

    invoke-virtual {p0, v8}, Ljavassist/bytecode/MethodInfo;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v8

    .line 203
    .local v8, "signature":Ljavassist/bytecode/AttributeInfo;
    if-eqz v8, :cond_6

    .line 204
    invoke-virtual {v8, p1, v2}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v8

    .line 205
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_6
    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 209
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 210
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 211
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 212
    return-void
.end method

.method public rebuildStackMap(Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "pool"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 457
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_0

    .line 458
    invoke-static {p1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMapTable;

    move-result-object v1

    .line 459
    .local v1, "smt":Ljavassist/bytecode/StackMapTable;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMapTable;)V

    .line 461
    .end local v1    # "smt":Ljavassist/bytecode/StackMapTable;
    :cond_0
    return-void
.end method

.method public rebuildStackMapForME(Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "pool"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 474
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    if-eqz v0, :cond_0

    .line 475
    invoke-static {p1, p0}, Ljavassist/bytecode/stackmap/MapMaker;->make2(Ljavassist/ClassPool;Ljavassist/bytecode/MethodInfo;)Ljavassist/bytecode/StackMap;

    move-result-object v1

    .line 476
    .local v1, "sm":Ljavassist/bytecode/StackMap;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMap;)V

    .line 478
    .end local v1    # "sm":Ljavassist/bytecode/StackMap;
    :cond_0
    return-void
.end method

.method public rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    .locals 2
    .param p1, "pool"    # Ljavassist/ClassPool;
    .param p2, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 439
    invoke-virtual {p2}, Ljavassist/bytecode/ClassFile;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 440
    invoke-virtual {p0, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMap(Ljavassist/ClassPool;)V

    .line 442
    :cond_0
    sget-boolean v0, Ljavassist/bytecode/MethodInfo;->doPreverify:Z

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapForME(Ljavassist/ClassPool;)V

    .line 444
    :cond_1
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    return-object v0
.end method

.method public removeCodeAttribute()V
    .locals 2

    .line 405
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    const-string v1, "Code"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 406
    return-void
.end method

.method public removeExceptionsAttribute()V
    .locals 2

    .line 383
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    const-string v1, "Exceptions"

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 384
    return-void
.end method

.method public setAccessFlags(I)V
    .locals 0
    .param p1, "acc"    # I

    .line 277
    iput p1, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    .line 278
    return-void
.end method

.method public setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V
    .locals 1
    .param p1, "cattr"    # Ljavassist/bytecode/CodeAttribute;

    .line 416
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->removeCodeAttribute()V

    .line 417
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 420
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method public setDescriptor(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    .line 297
    :cond_0
    return-void
.end method

.method public setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V
    .locals 1
    .param p1, "cattr"    # Ljavassist/bytecode/ExceptionsAttribute;

    .line 394
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->removeExceptionsAttribute()V

    .line 395
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    .line 398
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    .line 229
    iput-object p1, p0, Ljavassist/bytecode/MethodInfo;->cachedName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 10
    .param p1, "superclass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v0

    .line 528
    .local v0, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->getCode()[B

    move-result-object v1

    .line 529
    .local v1, "code":[B
    invoke-virtual {v0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 530
    .local v2, "iterator":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v2}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v3

    .line 531
    .local v3, "pos":I
    if-ltz v3, :cond_1

    .line 532
    iget-object v4, p0, Ljavassist/bytecode/MethodInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 533
    .local v4, "cp":Ljavassist/bytecode/ConstPool;
    add-int/lit8 v5, v3, 0x1

    invoke-static {v1, v5}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v5

    .line 534
    .local v5, "mref":I
    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getMethodrefNameAndType(I)I

    move-result v6

    .line 535
    .local v6, "nt":I
    invoke-virtual {v4, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v7

    .line 536
    .local v7, "sc":I
    invoke-virtual {v4, v7, v6}, Ljavassist/bytecode/ConstPool;->addMethodrefInfo(II)I

    move-result v8

    .line 537
    .local v8, "mref2":I
    add-int/lit8 v9, v3, 0x1

    invoke-static {v8, v1, v9}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 539
    .end local v4    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v5    # "mref":I
    .end local v6    # "nt":I
    .end local v7    # "sc":I
    .end local v8    # "mref2":I
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

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

    .line 572
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 573
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 574
    iget v0, p0, Ljavassist/bytecode/MethodInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 576
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    if-nez v0, :cond_0

    .line 577
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 579
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 580
    iget-object v0, p0, Ljavassist/bytecode/MethodInfo;->attribute:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 582
    :goto_0
    return-void
.end method
