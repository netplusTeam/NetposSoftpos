.class public Ljavassist/bytecode/AttributeInfo;
.super Ljava/lang/Object;
.source "AttributeInfo.java"


# instance fields
.field protected constPool:Ljavassist/bytecode/ConstPool;

.field info:[B

.field name:I


# direct methods
.method protected constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 68
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 69
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 70
    .local v0, "len":I
    new-array v1, v0, [B

    iput-object v1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 71
    if-lez v0, :cond_0

    .line 72
    invoke-virtual {p3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 73
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;I[B)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # I
    .param p3, "attrinfo"    # [B

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    .line 44
    iput p2, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    .line 45
    iput-object p3, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 2
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "attrname"    # Ljava/lang/String;
    .param p3, "attrinfo"    # [B

    .line 61
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    .line 62
    return-void
.end method

.method static copyAll(Ljava/util/List;Ljavassist/bytecode/ConstPool;)Ljava/util/List;
    .locals 5
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljavassist/bytecode/ConstPool;",
            ")",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation

    .line 244
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 245
    return-object v0

    .line 247
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v1, "newList":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 249
    .local v3, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v3, p1, v0}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v3    # "attr":Ljavassist/bytecode/AttributeInfo;
    :cond_1
    return-object v1
.end method

.method static getLength(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;)I"
        }
    .end annotation

    .line 202
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "size":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AttributeInfo;

    .line 205
    .local v2, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/AttributeInfo;->length()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "attr":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 207
    :cond_0
    return v0
.end method

.method static getRefClasses(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 286
    .local v1, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v1, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/Map;)V

    .end local v1    # "ai":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 287
    :cond_1
    return-void
.end method

.method static lookup(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 211
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 212
    return-object v0

    .line 214
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AttributeInfo;

    .line 215
    .local v2, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    return-object v2

    .line 215
    .end local v2    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_1
    goto :goto_0

    .line 218
    :cond_2
    return-object v0
.end method

.method static read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
    .param p0, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 79
    .local v0, "name":I
    invoke-virtual {p0, v0}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "nameStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 81
    .local v2, "first":C
    const/16 v3, 0x45

    if-ge v2, v3, :cond_4

    .line 82
    const-string v3, "AnnotationDefault"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    new-instance v3, Ljavassist/bytecode/AnnotationDefaultAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/AnnotationDefaultAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 84
    :cond_0
    const-string v3, "BootstrapMethods"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Ljavassist/bytecode/BootstrapMethodsAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/BootstrapMethodsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 86
    :cond_1
    const-string v3, "Code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v3, Ljavassist/bytecode/CodeAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/CodeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 88
    :cond_2
    const-string v3, "ConstantValue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    new-instance v3, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 90
    :cond_3
    const-string v3, "Deprecated"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v3, Ljavassist/bytecode/DeprecatedAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/DeprecatedAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 93
    :cond_4
    const/16 v3, 0x4d

    if-ge v2, v3, :cond_a

    .line 94
    const-string v3, "EnclosingMethod"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    new-instance v3, Ljavassist/bytecode/EnclosingMethodAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/EnclosingMethodAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 96
    :cond_5
    const-string v3, "Exceptions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    new-instance v3, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 98
    :cond_6
    const-string v3, "InnerClasses"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    new-instance v3, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 100
    :cond_7
    const-string v3, "LineNumberTable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    new-instance v3, Ljavassist/bytecode/LineNumberAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/LineNumberAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 102
    :cond_8
    const-string v3, "LocalVariableTable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    new-instance v3, Ljavassist/bytecode/LocalVariableAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 104
    :cond_9
    const-string v3, "LocalVariableTypeTable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 105
    new-instance v3, Ljavassist/bytecode/LocalVariableTypeAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/LocalVariableTypeAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 107
    :cond_a
    const/16 v3, 0x53

    if-ge v2, v3, :cond_13

    .line 109
    const-string v4, "MethodParameters"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 110
    new-instance v3, Ljavassist/bytecode/MethodParametersAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/MethodParametersAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 111
    :cond_b
    const-string v4, "NestHost"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 112
    new-instance v3, Ljavassist/bytecode/NestHostAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/NestHostAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 113
    :cond_c
    const-string v4, "NestMembers"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 114
    new-instance v3, Ljavassist/bytecode/NestMembersAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/NestMembersAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 115
    :cond_d
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 116
    const-string v4, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_1

    .line 119
    :cond_e
    const-string v4, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 120
    const-string v4, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_0

    .line 122
    :cond_f
    const-string v4, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 123
    const-string v4, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 124
    :cond_10
    new-instance v3, Ljavassist/bytecode/TypeAnnotationsAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/TypeAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 121
    :cond_11
    :goto_0
    new-instance v3, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/ParameterAnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 118
    :cond_12
    :goto_1
    new-instance v3, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/AnnotationsAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 126
    :cond_13
    if-lt v2, v3, :cond_18

    .line 127
    const-string v3, "Signature"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 128
    new-instance v3, Ljavassist/bytecode/SignatureAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 129
    :cond_14
    const-string v3, "SourceFile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 130
    new-instance v3, Ljavassist/bytecode/SourceFileAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 131
    :cond_15
    const-string v3, "Synthetic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 132
    new-instance v3, Ljavassist/bytecode/SyntheticAttribute;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/SyntheticAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 133
    :cond_16
    const-string v3, "StackMap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 134
    new-instance v3, Ljavassist/bytecode/StackMap;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/StackMap;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 135
    :cond_17
    const-string v3, "StackMapTable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 136
    new-instance v3, Ljavassist/bytecode/StackMapTable;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/StackMapTable;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3

    .line 138
    :cond_18
    new-instance v3, Ljavassist/bytecode/AttributeInfo;

    invoke-direct {v3, p0, v0, p1}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-object v3
.end method

.method static declared-synchronized remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    const-class v0, Ljavassist/bytecode/AttributeInfo;

    monitor-enter v0

    .line 222
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 223
    monitor-exit v0

    return-object v1

    .line 225
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/AttributeInfo;

    .line 226
    .local v3, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v3}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 228
    monitor-exit v0

    return-object v3

    .line 226
    .end local v3    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_1
    goto :goto_0

    .line 230
    :cond_2
    monitor-exit v0

    return-object v1

    .line 221
    .end local p0    # "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 264
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    if-nez p0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 268
    .local v1, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v1, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "ai":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 269
    :cond_1
    return-void
.end method

.method static renameClass(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 276
    .local v1, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v1, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/Map;)V

    .end local v1    # "ai":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method static writeAll(Ljava/util/List;Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    if-nez p0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 240
    .local v1, "attr":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v1, p1}, Ljavassist/bytecode/AttributeInfo;->write(Ljava/io/DataOutputStream;)V

    .end local v1    # "attr":Ljavassist/bytecode/AttributeInfo;
    goto :goto_0

    .line 241
    :cond_1
    return-void
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 4
    .param p1, "newCp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljavassist/bytecode/AttributeInfo;"
        }
    .end annotation

    .line 190
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {p0}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public get()[B
    .locals 1

    .line 169
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 151
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRefClasses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public length()I
    .locals 1

    .line 159
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 260
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public set([B)V
    .locals 0
    .param p1, "newinfo"    # [B

    .line 178
    iput-object p1, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Ljavassist/bytecode/AttributeInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 197
    iget-object v0, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    array-length v1, v0

    if-lez v1, :cond_0

    .line 198
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 199
    :cond_0
    return-void
.end method
