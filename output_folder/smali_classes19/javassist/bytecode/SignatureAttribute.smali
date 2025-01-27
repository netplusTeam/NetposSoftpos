.class public Ljavassist/bytecode/SignatureAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/bytecode/SignatureAttribute$TypeVariable;,
        Ljavassist/bytecode/SignatureAttribute$ArrayType;,
        Ljavassist/bytecode/SignatureAttribute$NestedClassType;,
        Ljavassist/bytecode/SignatureAttribute$ClassType;,
        Ljavassist/bytecode/SignatureAttribute$ObjectType;,
        Ljavassist/bytecode/SignatureAttribute$BaseType;,
        Ljavassist/bytecode/SignatureAttribute$Type;,
        Ljavassist/bytecode/SignatureAttribute$TypeArgument;,
        Ljavassist/bytecode/SignatureAttribute$TypeParameter;,
        Ljavassist/bytecode/SignatureAttribute$MethodSignature;,
        Ljavassist/bytecode/SignatureAttribute$ClassSignature;,
        Ljavassist/bytecode/SignatureAttribute$Cursor;
    }
.end annotation


# static fields
.field public static final tag:Ljava/lang/String; = "Signature"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "n"    # I
    .param p3, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 4
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "signature"    # Ljava/lang/String;

    .line 50
    const-string v0, "Signature"

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, p2}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "index":I
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 53
    .local v1, "bvalue":[B
    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 54
    int-to-byte v2, v0

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 55
    invoke-virtual {p0, v1}, Ljavassist/bytecode/SignatureAttribute;->set([B)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v0

    return-object v0
.end method

.method private static error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;
    .locals 3
    .param p0, "sig"    # Ljava/lang/String;

    .line 1171
    new-instance v0, Ljavassist/bytecode/BadBytecode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavassist/bytecode/BadBytecode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static isNamePart(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 162
    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 3
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1155
    const/4 v0, 0x1

    .line 1156
    .local v0, "dim":I
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 1157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$ArrayType;

    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavassist/bytecode/SignatureAttribute$ArrayType;-><init>(ILjavassist/bytecode/SignatureAttribute$Type;)V

    return-object v1
.end method

.method private static parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 2
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1102
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    .line 1103
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v0

    throw v0
.end method

.method private static parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;
    .locals 7
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .param p2, "parent"    # Ljavassist/bytecode/SignatureAttribute$ClassType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1110
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1113
    .local v0, "start":I
    :cond_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1114
    .local v1, "t":C
    const/16 v2, 0x3c

    const/16 v3, 0x24

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_0

    .line 1115
    :cond_1
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1117
    .local v4, "end":I
    if-ne v1, v2, :cond_2

    .line 1118
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    move-result-object v2

    .line 1119
    .local v2, "targs":[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    iget v5, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1122
    .end local v2    # "targs":[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    :cond_2
    const/4 v2, 0x0

    .line 1124
    .restart local v2    # "targs":[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    :goto_0
    invoke-static {p0, v0, v4, v2, p2}, Ljavassist/bytecode/SignatureAttribute$ClassType;->make(Ljava/lang/String;II[Ljavassist/bytecode/SignatureAttribute$TypeArgument;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v5

    .line 1125
    .local v5, "thisClass":Ljavassist/bytecode/SignatureAttribute$ClassType;
    if-eq v1, v3, :cond_4

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 1129
    :cond_3
    return-object v5

    .line 1126
    :cond_4
    :goto_1
    iget v3, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1127
    invoke-static {p0, p1, v5}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v3

    return-object v3
.end method

.method private static parseMethodSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;
    .locals 9
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1022
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    .line 1023
    .local v0, "cur":Ljavassist/bytecode/SignatureAttribute$Cursor;
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    move-result-object v1

    .line 1024
    .local v1, "tp":[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    iget v2, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    .line 1027
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$Type;>;"
    :goto_0
    iget v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 1029
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v3

    .line 1030
    .local v3, "t":Ljavassist/bytecode/SignatureAttribute$Type;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    .end local v3    # "t":Ljavassist/bytecode/SignatureAttribute$Type;
    goto :goto_0

    .line 1033
    :cond_0
    iget v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1034
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v3

    .line 1035
    .local v3, "ret":Ljavassist/bytecode/SignatureAttribute$Type;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1036
    .local v4, "sigLen":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v5, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$ObjectType;>;"
    :goto_1
    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    if-ge v6, v4, :cond_2

    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_2

    .line 1038
    iget v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1039
    const/4 v6, 0x0

    invoke-static {p0, v0, v6}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v6

    .line 1040
    .local v6, "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    instance-of v7, v6, Ljavassist/bytecode/SignatureAttribute$ArrayType;

    if-nez v7, :cond_1

    .line 1043
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    .end local v6    # "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    goto :goto_1

    .line 1041
    .restart local v6    # "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    :cond_1
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v7

    throw v7

    .line 1046
    .end local v6    # "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljavassist/bytecode/SignatureAttribute$Type;

    .line 1047
    .local v6, "p":[Ljavassist/bytecode/SignatureAttribute$Type;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-interface {v5, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 1048
    .local v7, "ex":[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    new-instance v8, Ljavassist/bytecode/SignatureAttribute$MethodSignature;

    invoke-direct {v8, v1, v6, v3, v7}, Ljavassist/bytecode/SignatureAttribute$MethodSignature;-><init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;[Ljavassist/bytecode/SignatureAttribute$Type;Ljavassist/bytecode/SignatureAttribute$Type;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V

    return-object v8

    .line 1025
    .end local v2    # "params":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$Type;>;"
    .end local v3    # "ret":Ljavassist/bytecode/SignatureAttribute$Type;
    .end local v4    # "sigLen":I
    .end local v5    # "exceptions":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$ObjectType;>;"
    .end local v6    # "p":[Ljavassist/bytecode/SignatureAttribute$Type;
    .end local v7    # "ex":[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    :cond_3
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v2

    throw v2
.end method

.method private static parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 4
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .param p2, "dontThrow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1083
    iget v0, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1084
    .local v0, "begin":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 1093
    if-eqz p2, :cond_0

    .line 1094
    return-object v2

    .line 1091
    :sswitch_0
    invoke-static {p0, p1}, Ljavassist/bytecode/SignatureAttribute;->parseArray(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v1

    return-object v1

    .line 1088
    :sswitch_1
    const/16 v1, 0x3b

    invoke-virtual {p1, p0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1089
    .local v1, "i":I
    new-instance v2, Ljavassist/bytecode/SignatureAttribute$TypeVariable;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, p0, v3, v1}, Ljavassist/bytecode/SignatureAttribute$TypeVariable;-><init>(Ljava/lang/String;II)V

    return-object v2

    .line 1086
    .end local v1    # "i":I
    :sswitch_2
    invoke-static {p0, p1, v2}, Ljavassist/bytecode/SignatureAttribute;->parseClassType2(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Ljavassist/bytecode/SignatureAttribute$ClassType;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v1

    return-object v1

    .line 1095
    :cond_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_2
        0x54 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;
    .locals 7
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1006
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    .line 1007
    .local v0, "cur":Ljavassist/bytecode/SignatureAttribute$Cursor;
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    move-result-object v1

    .line 1008
    .local v1, "tp":[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v2

    .line 1009
    .local v2, "superClass":Ljavassist/bytecode/SignatureAttribute$ClassType;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1010
    .local v3, "sigLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v4, "ifArray":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$ClassType;>;"
    :goto_0
    iget v5, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    if-ge v5, v3, :cond_0

    iget v5, v0, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_0

    .line 1012
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseClassType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$ClassType;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1014
    :cond_0
    nop

    .line 1015
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavassist/bytecode/SignatureAttribute$ClassType;

    .line 1016
    .local v5, "ifs":[Ljavassist/bytecode/SignatureAttribute$ClassType;
    new-instance v6, Ljavassist/bytecode/SignatureAttribute$ClassSignature;

    invoke-direct {v6, v1, v2, v5}, Ljavassist/bytecode/SignatureAttribute$ClassSignature;-><init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;Ljavassist/bytecode/SignatureAttribute$ClassType;[Ljavassist/bytecode/SignatureAttribute$ClassType;)V

    return-object v6
.end method

.method private static parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 4
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1163
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v0

    .line 1164
    .local v0, "t":Ljavassist/bytecode/SignatureAttribute$Type;
    if-nez v0, :cond_0

    .line 1165
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$BaseType;

    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {v1, v2}, Ljavassist/bytecode/SignatureAttribute$BaseType;-><init>(C)V

    move-object v0, v1

    .line 1167
    :cond_0
    return-object v0
.end method

.method private static parseTypeArgs(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 5
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "c"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$TypeArgument;>;"
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "t":C
    const/16 v3, 0x3e

    if-eq v1, v3, :cond_2

    .line 1137
    const/16 v1, 0x2a

    if-ne v2, v1, :cond_0

    .line 1138
    new-instance v3, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    move-object v1, v3

    .local v1, "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    goto :goto_1

    .line 1140
    .end local v1    # "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    :cond_0
    const/16 v1, 0x2b

    if-eq v2, v1, :cond_1

    const/16 v1, 0x2d

    if-eq v2, v1, :cond_1

    .line 1141
    const/16 v1, 0x20

    .line 1142
    .end local v2    # "t":C
    .local v1, "t":C
    iget v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    move v2, v1

    .line 1145
    .end local v1    # "t":C
    .restart local v2    # "t":C
    :cond_1
    new-instance v1, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    .line 1148
    .local v1, "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    .end local v1    # "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    goto :goto_0

    .line 1151
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    return-object v1
.end method

.method private static parseTypeParams(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 13
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "cur"    # Ljavassist/bytecode/SignatureAttribute$Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v0, "typeParam":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$TypeParameter;>;"
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    .line 1056
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1057
    :goto_0
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_1

    .line 1058
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1059
    .local v1, "nameBegin":I
    const/16 v3, 0x3a

    invoke-virtual {p1, p0, v3}, Ljavassist/bytecode/SignatureAttribute$Cursor;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1060
    .local v10, "nameEnd":I
    invoke-static {p0, p1, v2}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v11

    .line 1061
    .local v11, "classBound":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v4

    .line 1062
    .local v12, "ifBound":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$ObjectType;>;"
    :goto_1
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1063
    iget v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr v4, v2

    iput v4, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1064
    const/4 v4, 0x0

    invoke-static {p0, p1, v4}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v4

    .line 1065
    .local v4, "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    .end local v4    # "t":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    goto :goto_1

    .line 1068
    :cond_0
    new-instance v3, Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 1069
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-interface {v12, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-object v4, v3

    move-object v5, p0

    move v6, v1

    move v7, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;-><init>(Ljava/lang/String;IILjavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V

    .line 1070
    .local v3, "p":Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    .end local v1    # "nameBegin":I
    .end local v3    # "p":Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .end local v10    # "nameEnd":I
    .end local v11    # "classBound":Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .end local v12    # "ifBound":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/SignatureAttribute$ObjectType;>;"
    goto :goto_0

    .line 1073
    :cond_1
    iget v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    add-int/2addr v1, v2

    iput v1, p1, Ljavassist/bytecode/SignatureAttribute$Cursor;->position:I

    .line 1076
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object v1
.end method

.method static renameClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "desc"    # Ljava/lang/String;
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p0, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 114
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "newdesc":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 118
    .local v1, "head":I
    const/4 v2, 0x0

    .line 120
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x4c

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 121
    .local v4, "j":I
    if-gez v4, :cond_1

    .line 122
    goto :goto_3

    .line 124
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v5, "nameBuf":Ljava/lang/StringBuilder;
    move v6, v4

    .line 128
    .local v6, "k":I
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v7

    .local v8, "c":C
    const/16 v9, 0x3b

    if-eq v7, v9, :cond_4

    .line 129
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    const/16 v7, 0x3c

    if-ne v8, v7, :cond_2

    .line 131
    :goto_2
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v8, v7

    const/16 v9, 0x3e

    if-eq v7, v9, :cond_3

    .line 132
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :cond_4
    nop

    .line 139
    add-int/lit8 v2, v6, 0x1

    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 142
    .local v9, "name2":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 143
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    move v1, v2

    .line 149
    .end local v4    # "j":I
    .end local v5    # "nameBuf":Ljava/lang/StringBuilder;
    .end local v6    # "k":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "c":C
    .end local v9    # "name2":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 138
    .restart local v4    # "j":I
    .restart local v5    # "nameBuf":Ljava/lang/StringBuilder;
    .restart local v6    # "k":I
    :catch_0
    move-exception v3

    .line 151
    .end local v4    # "j":I
    .end local v5    # "nameBuf":Ljava/lang/StringBuilder;
    .end local v6    # "k":I
    :goto_3
    if-nez v1, :cond_6

    .line 152
    return-object p0

    .line 153
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 154
    .local v3, "len":I
    if-ge v1, v3, :cond_7

    .line 155
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toClassSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;
    .locals 2
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 940
    :try_start_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->parseSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ClassSignature;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v1

    throw v1
.end method

.method public static toFieldSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 2
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 979
    :try_start_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljavassist/bytecode/SignatureAttribute;->parseObjectType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;Z)Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 981
    :catch_0
    move-exception v0

    .line 982
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v1

    throw v1
.end method

.method public static toMethodSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;
    .locals 2
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 960
    :try_start_0
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->parseMethodSig(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$MethodSignature;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v1

    throw v1
.end method

.method public static toTypeSignature(Ljava/lang/String;)Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 2
    .param p0, "sig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 996
    :try_start_0
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Cursor;-><init>(Ljavassist/bytecode/SignatureAttribute$1;)V

    invoke-static {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->parseType(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$Cursor;)Ljavassist/bytecode/SignatureAttribute$Type;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p0}, Ljavassist/bytecode/SignatureAttribute;->error(Ljava/lang/String;)Ljavassist/bytecode/BadBytecode;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;
    .locals 2
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

    .line 91
    .local p2, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 3

    .line 66
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->get()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavassist/bytecode/ByteArray;->readU16bit([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getUtf8Info(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "sig":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->setSignature(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method renameClass(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljavassist/bytecode/SignatureAttribute;->renameClass(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "sig":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavassist/bytecode/SignatureAttribute;->setSignature(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "sig"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addUtf8Info(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "index":I
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute;->info:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljavassist/bytecode/ByteArray;->write16bit(I[BI)V

    .line 79
    return-void
.end method
