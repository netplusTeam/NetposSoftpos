.class public Ljavassist/bytecode/annotation/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/annotation/Annotation$Pair;
    }
.end annotation


# instance fields
.field members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/annotation/Annotation$Pair;",
            ">;"
        }
    .end annotation
.end field

.field pool:Ljavassist/bytecode/ConstPool;

.field typeIndex:I


# direct methods
.method public constructor <init>(ILjavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    .line 73
    iput p1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/bytecode/ConstPool;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 87
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Ljavassist/bytecode/annotation/Annotation;-><init>(ILjavassist/bytecode/ConstPool;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)V
    .locals 6
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->of(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;-><init>(ILjavassist/bytecode/ConstPool;)V

    .line 105
    invoke-virtual {p2}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p2}, Ljavassist/CtClass;->getDeclaredMethods()[Ljavassist/CtMethod;

    move-result-object v0

    .line 110
    .local v0, "methods":[Ljavassist/CtMethod;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 113
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 114
    .local v3, "m":Ljavassist/CtMethod;
    invoke-virtual {v3}, Ljavassist/CtMethod;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Ljavassist/CtMethod;->getReturnType()Ljavassist/CtClass;

    move-result-object v5

    invoke-static {p1, v5}, Ljavassist/bytecode/annotation/Annotation;->createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v5

    .line 114
    invoke-virtual {p0, v4, v5}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(Ljava/lang/String;Ljavassist/bytecode/annotation/MemberValue;)V

    .line 113
    .end local v3    # "m":Ljavassist/CtMethod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return-void

    .line 106
    .end local v0    # "methods":[Ljavassist/CtMethod;
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only interfaces are allowed for Annotation creation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V
    .locals 2
    .param p1, "pair"    # Ljavassist/bytecode/annotation/Annotation$Pair;

    .line 201
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p1, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 205
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public static createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;
    .locals 3
    .param p0, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p1, "type"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 129
    sget-object v0, Ljavassist/CtClass;->booleanType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_0

    .line 130
    new-instance v0, Ljavassist/bytecode/annotation/BooleanMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/BooleanMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 131
    :cond_0
    sget-object v0, Ljavassist/CtClass;->byteType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_1

    .line 132
    new-instance v0, Ljavassist/bytecode/annotation/ByteMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/ByteMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 133
    :cond_1
    sget-object v0, Ljavassist/CtClass;->charType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_2

    .line 134
    new-instance v0, Ljavassist/bytecode/annotation/CharMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/CharMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 135
    :cond_2
    sget-object v0, Ljavassist/CtClass;->shortType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_3

    .line 136
    new-instance v0, Ljavassist/bytecode/annotation/ShortMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/ShortMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 137
    :cond_3
    sget-object v0, Ljavassist/CtClass;->intType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_4

    .line 138
    new-instance v0, Ljavassist/bytecode/annotation/IntegerMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/IntegerMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 139
    :cond_4
    sget-object v0, Ljavassist/CtClass;->longType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_5

    .line 140
    new-instance v0, Ljavassist/bytecode/annotation/LongMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/LongMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 141
    :cond_5
    sget-object v0, Ljavassist/CtClass;->floatType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_6

    .line 142
    new-instance v0, Ljavassist/bytecode/annotation/FloatMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/FloatMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 143
    :cond_6
    sget-object v0, Ljavassist/CtClass;->doubleType:Ljavassist/CtClass;

    if-ne p1, v0, :cond_7

    .line 144
    new-instance v0, Ljavassist/bytecode/annotation/DoubleMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/DoubleMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 145
    :cond_7
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    new-instance v0, Ljavassist/bytecode/annotation/ClassMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/ClassMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 147
    :cond_8
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    new-instance v0, Ljavassist/bytecode/annotation/StringMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/StringMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    return-object v0

    .line 149
    :cond_9
    invoke-virtual {p1}, Ljavassist/CtClass;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {p1}, Ljavassist/CtClass;->getComponentType()Ljavassist/CtClass;

    move-result-object v0

    .line 151
    .local v0, "arrayType":Ljavassist/CtClass;
    invoke-static {p0, v0}, Ljavassist/bytecode/annotation/Annotation;->createMemberValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v1

    .line 152
    .local v1, "member":Ljavassist/bytecode/annotation/MemberValue;
    new-instance v2, Ljavassist/bytecode/annotation/ArrayMemberValue;

    invoke-direct {v2, v1, p0}, Ljavassist/bytecode/annotation/ArrayMemberValue;-><init>(Ljavassist/bytecode/annotation/MemberValue;Ljavassist/bytecode/ConstPool;)V

    return-object v2

    .line 154
    .end local v0    # "arrayType":Ljavassist/CtClass;
    .end local v1    # "member":Ljavassist/bytecode/annotation/MemberValue;
    :cond_a
    invoke-virtual {p1}, Ljavassist/CtClass;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    new-instance v0, Ljavassist/bytecode/annotation/Annotation;

    invoke-direct {v0, p0, p1}, Ljavassist/bytecode/annotation/Annotation;-><init>(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)V

    .line 156
    .local v0, "info":Ljavassist/bytecode/annotation/Annotation;
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationMemberValue;

    invoke-direct {v1, v0, p0}, Ljavassist/bytecode/annotation/AnnotationMemberValue;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V

    return-object v1

    .line 162
    .end local v0    # "info":Ljavassist/bytecode/annotation/Annotation;
    :cond_b
    new-instance v0, Ljavassist/bytecode/annotation/EnumMemberValue;

    invoke-direct {v0, p0}, Ljavassist/bytecode/annotation/EnumMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 163
    .local v0, "emv":Ljavassist/bytecode/annotation/EnumMemberValue;
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/EnumMemberValue;->setType(Ljava/lang/String;)V

    .line 164
    return-object v0
.end method


# virtual methods
.method public addMemberValue(ILjavassist/bytecode/annotation/MemberValue;)V
    .locals 1
    .param p1, "nameIndex"    # I
    .param p2, "value"    # Ljavassist/bytecode/annotation/MemberValue;

    .line 178
    new-instance v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    invoke-direct {v0}, Ljavassist/bytecode/annotation/Annotation$Pair;-><init>()V

    .line 179
    .local v0, "p":Ljavassist/bytecode/annotation/Annotation$Pair;
    iput p1, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    .line 180
    iput-object p2, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    .line 181
    invoke-direct {p0, v0}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(Ljavassist/bytecode/annotation/Annotation$Pair;)V

    .line 182
    return-void
.end method

.method public addMemberValue(Ljava/lang/String;Ljavassist/bytecode/annotation/MemberValue;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljavassist/bytecode/annotation/MemberValue;

    .line 191
    new-instance v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    invoke-direct {v0}, Ljavassist/bytecode/annotation/Annotation$Pair;-><init>()V

    .line 192
    .local v0, "p":Ljavassist/bytecode/annotation/Annotation$Pair;
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    .line 193
    iput-object p2, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    .line 194
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 197
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 333
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 334
    return v0

    .line 335
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Ljavassist/bytecode/annotation/Annotation;

    if-nez v2, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    move-object v2, p1

    check-cast v2, Ljavassist/bytecode/annotation/Annotation;

    .line 340
    .local v2, "other":Ljavassist/bytecode/annotation/Annotation;
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    return v1

    .line 343
    :cond_2
    iget-object v3, v2, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    .line 344
    .local v3, "otherMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/bytecode/annotation/Annotation$Pair;>;"
    iget-object v4, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-ne v4, v3, :cond_3

    .line 345
    return v0

    .line 346
    :cond_3
    if-nez v4, :cond_5

    .line 347
    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 349
    :cond_5
    if-nez v3, :cond_6

    .line 350
    return v1

    .line 352
    :cond_6
    invoke-interface {v4, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 336
    .end local v2    # "other":Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "otherMembers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/bytecode/annotation/Annotation$Pair;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method public getMemberNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/annotation/Annotation$Pair;

    iget-object v0, v0, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    return-object v0

    .line 266
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 323
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 324
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 323
    return v0
.end method

.method public toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;
    .locals 4
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavassist/bytecode/annotation/NoSuchClassError;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljavassist/bytecode/annotation/MemberValue;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p1, v0, p2, p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 295
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e2":Ljava/lang/IllegalAccessError;
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 288
    .end local v1    # "e2":Ljava/lang/IllegalAccessError;
    :catch_1
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 216
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 219
    invoke-virtual {p0, v2}, Ljavassist/bytecode/annotation/Annotation;->getMemberValue(Ljava/lang/String;)Ljavassist/bytecode/annotation/MemberValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 220
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 223
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V
    .locals 4
    .param p1, "writer"    # Ljavassist/bytecode/annotation/AnnotationsWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Ljavassist/bytecode/annotation/Annotation;->pool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/annotation/Annotation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "typeName":Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 310
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(Ljava/lang/String;I)V

    .line 311
    return-void

    .line 314
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljavassist/bytecode/annotation/AnnotationsWriter;->annotation(Ljava/lang/String;I)V

    .line 315
    iget-object v1, p0, Ljavassist/bytecode/annotation/Annotation;->members:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/annotation/Annotation$Pair;

    .line 316
    .local v2, "pair":Ljavassist/bytecode/annotation/Annotation$Pair;
    iget v3, v2, Ljavassist/bytecode/annotation/Annotation$Pair;->name:I

    invoke-virtual {p1, v3}, Ljavassist/bytecode/annotation/AnnotationsWriter;->memberValuePair(I)V

    .line 317
    iget-object v3, v2, Ljavassist/bytecode/annotation/Annotation$Pair;->value:Ljavassist/bytecode/annotation/MemberValue;

    invoke-virtual {v3, p1}, Ljavassist/bytecode/annotation/MemberValue;->write(Ljavassist/bytecode/annotation/AnnotationsWriter;)V

    .line 318
    .end local v2    # "pair":Ljavassist/bytecode/annotation/Annotation$Pair;
    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method
