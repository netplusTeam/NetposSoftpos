.class Ljavassist/CtClassType;
.super Ljavassist/CtClass;
.source "CtClassType.java"


# static fields
.field private static final GET_THRESHOLD:I = 0x2


# instance fields
.field private accessors:Ljavassist/compiler/AccessorMaker;

.field classPool:Ljavassist/ClassPool;

.field classfile:Ljavassist/bytecode/ClassFile;

.field private doPruning:Z

.field private fieldInitializers:Ljavassist/FieldInitLink;

.field gcConstPool:Z

.field private getCount:I

.field private hiddenMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavassist/CtMethod;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private memberCache:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljavassist/CtMember$Cache;",
            ">;"
        }
    .end annotation
.end field

.field rawClassfile:[B

.field private uniqueNumberSeed:I

.field wasChanged:Z

.field private wasFrozen:Z

.field wasPruned:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "ins"    # Ljava/io/InputStream;
    .param p2, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 98
    new-instance v0, Ljavassist/bytecode/ClassFile;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 99
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .line 83
    invoke-direct {p0, p1}, Ljavassist/CtClass;-><init>(Ljava/lang/String;)V

    .line 78
    sget-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->doPruning:Z

    .line 84
    iput-object p2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/CtClassType;->gcConstPool:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 87
    iput-object v1, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 88
    iput-object v1, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/Reference;

    .line 89
    iput-object v1, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 90
    iput-object v1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 91
    iput-object v1, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Map;

    .line 92
    iput v0, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    .line 93
    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    .line 94
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/ClassFile;Ljavassist/ClassPool;)V
    .locals 2
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "cp"    # Ljavassist/ClassPool;

    .line 103
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljavassist/CtClassType;-><init>(Ljava/lang/String;Ljavassist/ClassPool;)V

    .line 104
    iput-object p1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 105
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1026
    if-nez p1, :cond_1

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "msg":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1033
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkPruned(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .line 1620
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-nez v0, :cond_0

    .line 1623
    return-void

    .line 1621
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was pruned."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dumpClassFile(Ljavassist/bytecode/ClassFile;)V
    .locals 2
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1607
    sget-object v0, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljavassist/CtClassType;->makeFileOutput(Ljava/lang/String;)Ljava/io/DataOutputStream;

    move-result-object v0

    .line 1609
    .local v0, "dump":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1613
    nop

    .line 1614
    return-void

    .line 1612
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 1613
    throw v1
.end method

.method private exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "head"    # Ljavassist/CtMember;
    .param p4, "tail"    # Ljavassist/CtMember;

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :goto_0
    if-eq p3, p4, :cond_0

    .line 162
    invoke-virtual {p3}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object p3

    .line 163
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 164
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method static getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;
    .locals 5
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavassist/ClassPool;",
            "Ljavassist/bytecode/AnnotationsAttribute;",
            "Ljavassist/bytecode/AnnotationsAttribute;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 599
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 600
    const/4 v0, 0x0

    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_0

    .line 602
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 604
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :goto_0
    if-nez p3, :cond_1

    .line 605
    const/4 v1, 0x0

    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_1

    .line 607
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .line 609
    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "typeName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 611
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 612
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    aget-object v4, v0, v3

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 611
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 615
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_5

    .line 616
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 617
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 618
    aget-object v4, v1, v3

    invoke-static {v4, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 616
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 620
    .end local v3    # "i":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method private getAnnotations(Z)[Ljava/lang/Object;
    .locals 4
    .param p1, "ignoreNotFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 642
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 643
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 644
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 645
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 646
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1086
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1087
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1088
    .local v1, "field":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    .line 1089
    .local v2, "tail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_2

    .line 1090
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1091
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 1092
    invoke-virtual {v1}, Ljavassist/CtMember;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1093
    :cond_1
    move-object v3, v1

    check-cast v3, Ljavassist/CtField;

    return-object v3

    .line 1096
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getFields(Ljava/util/List;Ljavassist/CtClass;)V
    .locals 4
    .param p1, "cc"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavassist/CtMember;",
            ">;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .line 992
    .local p0, "alist":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtMember;>;"
    if-nez p1, :cond_0

    .line 993
    return-void

    .line 996
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/CtClassType;->getFields(Ljava/util/List;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1001
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 1002
    .local v0, "ifs":[Ljavassist/CtClass;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1003
    .local v3, "ctc":Ljavassist/CtClass;
    invoke-static {p0, v3}, Ljavassist/CtClassType;->getFields(Ljava/util/List;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1002
    .end local v3    # "ctc":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "ifs":[Ljavassist/CtClass;
    :cond_1
    goto :goto_2

    .line 1005
    :catch_1
    move-exception v0

    :goto_2
    nop

    .line 1007
    move-object v0, p1

    check-cast v0, Ljavassist/CtClassType;

    invoke-virtual {v0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1008
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1009
    .local v1, "field":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    .line 1010
    .local v2, "tail":Ljavassist/CtMember;
    :cond_2
    :goto_3
    if-eq v1, v2, :cond_3

    .line 1011
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Ljavassist/CtMember;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1013
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1015
    :cond_3
    return-void
.end method

.method private static getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 5
    .param p0, "cc"    # Ljavassist/CtClass;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1267
    instance-of v0, p0, Ljavassist/CtClassType;

    if-eqz v0, :cond_1

    .line 1268
    move-object v0, p0

    check-cast v0, Ljavassist/CtClassType;

    invoke-virtual {v0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1269
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1270
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1272
    .local v2, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1273
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1274
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljavassist/CtMethod;

    .line 1275
    invoke-virtual {v3}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    move-object v3, v1

    check-cast v3, Ljavassist/CtMethod;

    return-object v3

    .line 1281
    .end local v0    # "memCache":Ljavassist/CtMember$Cache;
    .end local v1    # "mth":Ljavassist/CtMember;
    .end local v2    # "mthTail":Ljavassist/CtMember;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 1282
    .local v0, "s":Ljavassist/CtClass;
    if-eqz v0, :cond_2

    .line 1283
    invoke-static {v0, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v1
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .local v1, "m":Ljavassist/CtMethod;
    if-eqz v1, :cond_2

    .line 1285
    return-object v1

    .line 1288
    .end local v0    # "s":Ljavassist/CtClass;
    .end local v1    # "m":Ljavassist/CtMethod;
    :catch_0
    move-exception v0

    :cond_2
    nop

    .line 1291
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 1292
    .local v0, "ifs":[Ljavassist/CtClass;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 1293
    .local v3, "ctc":Ljavassist/CtClass;
    invoke-static {v3, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v4
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1294
    .local v4, "m":Ljavassist/CtMethod;
    if-eqz v4, :cond_3

    .line 1295
    return-object v4

    .line 1292
    .end local v3    # "ctc":Ljavassist/CtClass;
    .end local v4    # "m":Ljavassist/CtMethod;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "ifs":[Ljavassist/CtClass;
    :cond_4
    goto :goto_1

    .line 1298
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 1299
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMethods0(Ljava/util/Map;Ljavassist/CtClass;)V
    .locals 4
    .param p1, "cc"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtMember;",
            ">;",
            "Ljavassist/CtClass;",
            ")V"
        }
    .end annotation

    .line 1228
    .local p0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtMember;>;"
    :try_start_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v0

    .line 1229
    .local v0, "ifs":[Ljavassist/CtClass;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1230
    .local v3, "ctc":Ljavassist/CtClass;
    invoke-static {p0, v3}, Ljavassist/CtClassType;->getMethods0(Ljava/util/Map;Ljavassist/CtClass;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .end local v3    # "ctc":Ljavassist/CtClass;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "ifs":[Ljavassist/CtClass;
    :cond_0
    goto :goto_1

    .line 1232
    :catch_0
    move-exception v0

    :goto_1
    nop

    .line 1235
    :try_start_1
    invoke-virtual {p1}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v0

    .line 1236
    .local v0, "s":Ljavassist/CtClass;
    if-eqz v0, :cond_1

    .line 1237
    invoke-static {p0, v0}, Ljavassist/CtClassType;->getMethods0(Ljava/util/Map;Ljavassist/CtClass;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1239
    .end local v0    # "s":Ljavassist/CtClass;
    :catch_1
    move-exception v0

    :cond_1
    :goto_2
    nop

    .line 1241
    instance-of v0, p1, Ljavassist/CtClassType;

    if-eqz v0, :cond_3

    .line 1242
    move-object v0, p1

    check-cast v0, Ljavassist/CtClassType;

    invoke-virtual {v0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1243
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1244
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1246
    .local v2, "mthTail":Ljavassist/CtMember;
    :cond_2
    :goto_3
    if-eq v1, v2, :cond_3

    .line 1247
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljavassist/CtMember;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1249
    move-object v3, v1

    check-cast v3, Ljavassist/CtMethod;

    invoke-virtual {v3}, Ljavassist/CtMethod;->getStringRep()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1252
    .end local v0    # "memCache":Ljavassist/CtMember$Cache;
    .end local v1    # "mth":Ljavassist/CtMember;
    .end local v2    # "mthTail":Ljavassist/CtMember;
    :cond_3
    return-void
.end method

.method static hasAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z
    .locals 1
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavassist/ClassPool;",
            "Ljavassist/bytecode/AnnotationsAttribute;",
            "Ljavassist/bytecode/AnnotationsAttribute;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 551
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/String;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result v0

    return v0
.end method

.method static hasAnnotationType(Ljava/lang/String;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z
    .locals 5
    .param p0, "annotationTypeName"    # Ljava/lang/String;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;

    .line 560
    if-nez p2, :cond_0

    .line 561
    const/4 v0, 0x0

    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_0

    .line 563
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 565
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    :goto_0
    if-nez p3, :cond_1

    .line 566
    const/4 v1, 0x0

    .local v1, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    goto :goto_1

    .line 568
    .end local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v1

    .line 570
    .restart local v1    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 571
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 572
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 573
    return v2

    .line 571
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 575
    .end local v3    # "i":I
    :cond_3
    if-eqz v1, :cond_5

    .line 576
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v4, v1

    if-ge v3, v4, :cond_5

    .line 577
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 578
    return v2

    .line 576
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 580
    .end local v3    # "i":I
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private static insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V
    .locals 4
    .param p0, "codeAttr"    # Ljavassist/bytecode/CodeAttribute;
    .param p1, "initializer"    # Ljavassist/bytecode/Bytecode;
    .param p2, "stacksize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/BadBytecode;
        }
    .end annotation

    .line 1740
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v0

    .line 1741
    .local v0, "it":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipSuperConstructor()I

    move-result v1

    .line 1742
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 1743
    invoke-virtual {v0}, Ljavassist/bytecode/CodeIterator;->skipThisConstructor()I

    move-result v1

    .line 1744
    if-ltz v1, :cond_0

    .line 1745
    return-void

    .line 1750
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v2

    .line 1751
    .local v2, "pos":I
    invoke-virtual {p1}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1752
    invoke-virtual {p0}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v3

    .line 1753
    .local v3, "maxstack":I
    if-ge v3, p2, :cond_1

    .line 1754
    invoke-virtual {p0, p2}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1755
    :cond_1
    return-void
.end method

.method private static isPubCons(Ljavassist/CtConstructor;)Z
    .locals 1
    .param p0, "cons"    # Ljavassist/CtConstructor;

    .line 1152
    invoke-virtual {p0}, Ljavassist/CtConstructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1152
    :goto_0
    return v0
.end method

.method private makeBehaviorCache(Ljavassist/CtMember$Cache;)V
    .locals 4
    .param p1, "cache"    # Ljavassist/CtMember$Cache;

    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/CtClassType;->getClassFile3(Z)Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 977
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/MethodInfo;

    .line 978
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->isMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 979
    new-instance v3, Ljavassist/CtMethod;

    invoke-direct {v3, v2, p0}, Ljavassist/CtMethod;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {p1, v3}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    goto :goto_1

    .line 981
    :cond_0
    new-instance v3, Ljavassist/CtConstructor;

    invoke-direct {v3, v2, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {p1, v3}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 978
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    :goto_1
    goto :goto_0

    .line 982
    :cond_1
    return-void
.end method

.method private makeFieldCache(Ljavassist/CtMember$Cache;)V
    .locals 4
    .param p1, "cache"    # Ljavassist/CtMember$Cache;

    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavassist/CtClassType;->getClassFile3(Z)Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v0

    .line 971
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/FieldInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/FieldInfo;

    .line 972
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    new-instance v3, Ljavassist/CtField;

    invoke-direct {v3, v2, p0}, Ljavassist/CtField;-><init>(Ljavassist/bytecode/FieldInfo;Ljavassist/CtClass;)V

    invoke-virtual {p1, v3}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    goto :goto_0

    .line 973
    :cond_0
    return-void
.end method

.method private makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I
    .locals 10
    .param p1, "code"    # Ljavassist/bytecode/Bytecode;
    .param p2, "parameters"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1760
    const/4 v0, 0x0

    .line 1761
    .local v0, "stacksize":I
    new-instance v1, Ljavassist/compiler/Javac;

    invoke-direct {v1, p1, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1763
    .local v1, "jv":Ljavassist/compiler/Javac;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v2}, Ljavassist/compiler/Javac;->recordParams([Ljavassist/CtClass;Z)I
    :try_end_0
    .catch Ljavassist/compiler/CompileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1767
    nop

    .line 1769
    iget-object v2, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    move-object v8, v2

    .local v8, "fi":Ljavassist/FieldInitLink;
    :goto_0
    if-eqz v8, :cond_1

    .line 1770
    iget-object v9, v8, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1771
    .local v9, "f":Ljavassist/CtField;
    invoke-virtual {v9}, Ljavassist/CtField;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1772
    iget-object v2, v8, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v9}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v9}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Ljavassist/CtField$Initializer;->compile(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;Ljavassist/compiler/Javac;)I

    move-result v2

    .line 1774
    .local v2, "s":I
    if-ge v0, v2, :cond_0

    .line 1775
    move v0, v2

    .line 1769
    .end local v2    # "s":I
    .end local v9    # "f":Ljavassist/CtField;
    :cond_0
    iget-object v8, v8, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_0

    .line 1779
    .end local v8    # "fi":Ljavassist/FieldInitLink;
    :cond_1
    return v0

    .line 1765
    :catch_0
    move-exception v2

    .line 1766
    .local v2, "e":Ljavassist/compiler/CompileError;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v2}, Ljavassist/CannotCompileException;-><init>(Ljavassist/compiler/CompileError;)V

    throw v3
.end method

.method private makeMemberList(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljavassist/CtClassType;",
            ">;)V"
        }
    .end annotation

    .line 1825
    .local p1, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljavassist/CtClassType;>;"
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    .line 1826
    .local v0, "mod":I
    invoke-static {v0}, Ljavassist/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1828
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 1829
    .local v1, "ifs":[Ljavassist/CtClass;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1830
    .local v4, "ic":Ljavassist/CtClass;
    if-eqz v4, :cond_1

    instance-of v5, v4, Ljavassist/CtClassType;

    if-eqz v5, :cond_1

    .line 1831
    move-object v5, v4

    check-cast v5, Ljavassist/CtClassType;

    invoke-direct {v5, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/Map;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1829
    .end local v4    # "ic":Ljavassist/CtClass;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "ifs":[Ljavassist/CtClass;
    :cond_2
    goto :goto_1

    .line 1833
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 1836
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    .line 1837
    .local v1, "s":Ljavassist/CtClass;
    if-eqz v1, :cond_4

    instance-of v2, v1, Ljavassist/CtClassType;

    if-eqz v2, :cond_4

    .line 1838
    move-object v2, v1

    check-cast v2, Ljavassist/CtClassType;

    invoke-direct {v2, p1}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/Map;)V
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1840
    .end local v1    # "s":Ljavassist/CtClass;
    :catch_1
    move-exception v1

    :cond_4
    :goto_2
    nop

    .line 1842
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    .line 1843
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 1844
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1846
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_5
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v2

    .line 1847
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/FieldInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/bytecode/FieldInfo;

    .line 1848
    .local v4, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v4}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1849
    .end local v4    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_6
    return-void
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V
    .locals 10
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1636
    iget-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v0, :cond_0

    .line 1637
    return-void

    .line 1639
    :cond_0
    new-instance v0, Ljavassist/bytecode/Bytecode;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1640
    .local v0, "code":Ljavassist/bytecode/Bytecode;
    new-instance v1, Ljavassist/compiler/Javac;

    invoke-direct {v1, v0, p0}, Ljavassist/compiler/Javac;-><init>(Ljavassist/bytecode/Bytecode;Ljavassist/CtClass;)V

    .line 1641
    .local v1, "jv":Ljavassist/compiler/Javac;
    const/4 v3, 0x0

    .line 1642
    .local v3, "stacksize":I
    const/4 v4, 0x0

    .line 1643
    .local v4, "doInit":Z
    iget-object v5, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .local v5, "fi":Ljavassist/FieldInitLink;
    :goto_0
    if-eqz v5, :cond_2

    .line 1644
    iget-object v6, v5, Ljavassist/FieldInitLink;->field:Ljavassist/CtField;

    .line 1645
    .local v6, "f":Ljavassist/CtField;
    invoke-virtual {v6}, Ljavassist/CtField;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1646
    const/4 v4, 0x1

    .line 1647
    iget-object v7, v5, Ljavassist/FieldInitLink;->init:Ljavassist/CtField$Initializer;

    invoke-virtual {v6}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v8

    invoke-virtual {v6}, Ljavassist/CtField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0, v1}, Ljavassist/CtField$Initializer;->compileIfStatic(Ljavassist/CtClass;Ljava/lang/String;Ljavassist/bytecode/Bytecode;Ljavassist/compiler/Javac;)I

    move-result v7

    .line 1649
    .local v7, "s":I
    if-ge v3, v7, :cond_1

    .line 1650
    move v3, v7

    .line 1643
    .end local v6    # "f":Ljavassist/CtField;
    .end local v7    # "s":I
    :cond_1
    iget-object v5, v5, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_0

    .line 1654
    .end local v5    # "fi":Ljavassist/FieldInitLink;
    :cond_2
    if-eqz v4, :cond_3

    .line 1655
    invoke-direct {p0, p1, v0, v3, v2}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    .line 1656
    :cond_3
    return-void
.end method

.method private modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V
    .locals 6
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "code"    # Ljavassist/bytecode/Bytecode;
    .param p3, "stacksize"    # I
    .param p4, "localsize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getStaticInitializer()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 1663
    .local v0, "m":Ljavassist/bytecode/MethodInfo;
    if-nez v0, :cond_1

    .line 1664
    const/16 v1, 0xb1

    invoke-virtual {p2, v1}, Ljavassist/bytecode/Bytecode;->add(I)V

    .line 1665
    invoke-virtual {p2, p3}, Ljavassist/bytecode/Bytecode;->setMaxStack(I)V

    .line 1666
    invoke-virtual {p2, p4}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1667
    new-instance v1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    const-string v3, "<clinit>"

    const-string v4, "()V"

    invoke-direct {v1, v2, v3, v4}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1668
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1669
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1670
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1671
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v1

    .line 1672
    .local v1, "cache":Ljavassist/CtMember$Cache;
    if-eqz v1, :cond_0

    .line 1673
    new-instance v2, Ljavassist/CtConstructor;

    invoke-direct {v2, v0, p0}, Ljavassist/CtConstructor;-><init>(Ljavassist/bytecode/MethodInfo;Ljavassist/CtClass;)V

    invoke-virtual {v1, v2}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 1674
    .end local v1    # "cache":Ljavassist/CtMember$Cache;
    :cond_0
    goto :goto_0

    .line 1676
    :cond_1
    invoke-virtual {v0}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    .line 1677
    .local v1, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v1, :cond_4

    .line 1681
    :try_start_0
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->iterator()Ljavassist/bytecode/CodeIterator;

    move-result-object v2

    .line 1682
    .local v2, "it":Ljavassist/bytecode/CodeIterator;
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->get()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/bytecode/CodeIterator;->insertEx([B)I

    move-result v3

    .line 1683
    .local v3, "pos":I
    invoke-virtual {p2}, Ljavassist/bytecode/Bytecode;->getExceptionTable()Ljavassist/bytecode/ExceptionTable;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljavassist/bytecode/CodeIterator;->insert(Ljavassist/bytecode/ExceptionTable;I)V

    .line 1684
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxStack()I

    move-result v4

    .line 1685
    .local v4, "maxstack":I
    if-ge v4, p3, :cond_2

    .line 1686
    invoke-virtual {v1, p3}, Ljavassist/bytecode/CodeAttribute;->setMaxStack(I)V

    .line 1688
    :cond_2
    invoke-virtual {v1}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v5

    .line 1689
    .local v5, "maxlocals":I
    if-ge v5, p4, :cond_3

    .line 1690
    invoke-virtual {v1, p4}, Ljavassist/bytecode/CodeAttribute;->setMaxLocals(I)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_1

    .line 1694
    .end local v2    # "it":Ljavassist/bytecode/CodeIterator;
    .end local v3    # "pos":I
    .end local v4    # "maxstack":I
    .end local v5    # "maxlocals":I
    :cond_3
    nop

    .line 1698
    .end local v1    # "codeAttr":Ljavassist/bytecode/CodeAttribute;
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v0, v1, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_1
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_1 .. :try_end_1} :catch_0

    .line 1702
    nop

    .line 1703
    return-void

    .line 1700
    :catch_0
    move-exception v1

    .line 1701
    .local v1, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v2, Ljavassist/CannotCompileException;

    invoke-direct {v2, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1692
    .local v1, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    :catch_1
    move-exception v2

    .line 1693
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1678
    .end local v2    # "e":Ljavassist/bytecode/BadBytecode;
    :cond_4
    new-instance v2, Ljavassist/CannotCompileException;

    const-string v3, "empty <clinit>"

    invoke-direct {v2, v3}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private modifyConstructors(Ljavassist/bytecode/ClassFile;)V
    .locals 9
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1708
    iget-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    if-nez v0, :cond_0

    .line 1709
    return-void

    .line 1711
    :cond_0
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 1712
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    .line 1713
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 1714
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1715
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    .line 1716
    .local v4, "codeAttr":Ljavassist/bytecode/CodeAttribute;
    if-eqz v4, :cond_1

    .line 1718
    :try_start_0
    new-instance v5, Ljavassist/bytecode/Bytecode;

    const/4 v6, 0x0

    .line 1719
    invoke-virtual {v4}, Ljavassist/bytecode/CodeAttribute;->getMaxLocals()I

    move-result v7

    invoke-direct {v5, v0, v6, v7}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1720
    .local v5, "init":Ljavassist/bytecode/Bytecode;
    nop

    .line 1722
    invoke-virtual {v3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    .line 1721
    invoke-static {v6, v7}, Ljavassist/bytecode/Descriptor;->getParameterTypes(Ljava/lang/String;Ljavassist/ClassPool;)[Ljavassist/CtClass;

    move-result-object v6

    .line 1724
    .local v6, "params":[Ljavassist/CtClass;
    invoke-direct {p0, v5, v6}, Ljavassist/CtClassType;->makeFieldInitializer(Ljavassist/bytecode/Bytecode;[Ljavassist/CtClass;)I

    move-result v7

    .line 1725
    .local v7, "stacksize":I
    invoke-static {v4, v5, v7}, Ljavassist/CtClassType;->insertAuxInitializer(Ljavassist/bytecode/CodeAttribute;Ljavassist/bytecode/Bytecode;I)V

    .line 1726
    iget-object v8, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v8, p1}, Ljavassist/bytecode/MethodInfo;->rebuildStackMapIf6(Ljavassist/ClassPool;Ljavassist/bytecode/ClassFile;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .line 1730
    .end local v5    # "init":Ljavassist/bytecode/Bytecode;
    .end local v6    # "params":[Ljavassist/CtClass;
    .end local v7    # "stacksize":I
    goto :goto_1

    .line 1728
    :catch_0
    move-exception v2

    .line 1729
    .local v2, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v5, Ljavassist/CannotCompileException;

    invoke-direct {v5, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1732
    .end local v2    # "e":Ljavassist/bytecode/BadBytecode;
    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v4    # "codeAttr":Ljavassist/bytecode/CodeAttribute;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1733
    :cond_2
    return-void
.end method

.method private nameReplaced()V
    .locals 3

    .line 936
    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 937
    .local v0, "cache":Ljavassist/CtMember$Cache;
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 939
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 940
    .local v2, "tail":Ljavassist/CtMember;
    :goto_0
    if-eq v1, v2, :cond_0

    .line 941
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 942
    invoke-virtual {v1}, Ljavassist/CtMember;->nameReplaced()V

    goto :goto_0

    .line 945
    .end local v1    # "mth":Ljavassist/CtMember;
    .end local v2    # "tail":Ljavassist/CtMember;
    :cond_0
    return-void
.end method

.method private static notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .line 1816
    array-length v0, p1

    .line 1817
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1818
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1819
    const/4 v2, 0x0

    return v2

    .line 1817
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1821
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private declared-synchronized removeClassFile()V
    .locals 1

    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    .end local p0    # "this":Ljavassist/CtClassType;
    :cond_0
    monitor-exit p0

    return-void

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveClassFile()V
    .locals 3

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavassist/CtClassType;->hasMemberCache()Ljavassist/CtMember$Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v0, "barray":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .local v1, "out":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 271
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 272
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    goto :goto_0

    .end local p0    # "this":Ljavassist/CtClassType;
    :catch_0
    move-exception v2

    .line 275
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    .end local v0    # "barray":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "out":Ljava/io/DataOutputStream;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setClassFile(Ljavassist/bytecode/ClassFile;)Ljavassist/bytecode/ClassFile;
    .locals 1
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    if-nez v0, :cond_0

    .line 287
    iput-object p1, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 289
    .end local p0    # "this":Ljavassist/CtClassType;
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 285
    .end local p1    # "cf":Ljavassist/bytecode/ClassFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;
    .locals 6
    .param p0, "anno"    # Ljavassist/bytecode/annotation/Annotation;
    .param p1, "cp"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 770
    :try_start_0
    invoke-virtual {p1}, Ljavassist/ClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 771
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 773
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 776
    .local v1, "cl2":Ljava/lang/ClassLoader;
    :try_start_1
    invoke-virtual {p0, v1, p1}, Ljavassist/bytecode/annotation/Annotation;->toAnnotationType(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 778
    :catch_1
    move-exception v2

    .line 780
    .local v2, "e2":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v3

    invoke-virtual {v3}, Ljavassist/CtClass;->toClass()Ljava/lang/Class;

    move-result-object v3

    .line 781
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 782
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 781
    invoke-static {v4, v3, p1, p0}, Ljavassist/bytecode/annotation/AnnotationImpl;->make(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/annotation/Annotation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 785
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v3

    .line 786
    .local v3, "e3":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljavassist/bytecode/annotation/Annotation;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)[Ljava/lang/Object;
    .locals 8
    .param p0, "ignoreNotFound"    # Z
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/AnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/AnnotationsAttribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 656
    if-nez p2, :cond_0

    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v1, 0x0

    .local v1, "size1":I
    goto :goto_0

    .line 661
    .end local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v1    # "size1":I
    :cond_0
    invoke-virtual {p2}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v0

    .line 662
    .restart local v0    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    array-length v1, v0

    .line 665
    .restart local v1    # "size1":I
    :goto_0
    if-nez p3, :cond_1

    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v3, 0x0

    .local v3, "size2":I
    goto :goto_1

    .line 670
    .end local v2    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v3    # "size2":I
    :cond_1
    invoke-virtual {p3}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v2

    .line 671
    .restart local v2    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    array-length v3, v2

    .line 674
    .restart local v3    # "size2":I
    :goto_1
    if-nez p0, :cond_4

    .line 675
    add-int v4, v1, v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 676
    .local v4, "result":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 677
    aget-object v6, v0, v5

    invoke-static {v6, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 676
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 679
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    if-ge v5, v3, :cond_3

    .line 680
    add-int v6, v5, v1

    aget-object v7, v2, v5

    invoke-static {v7, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v4, v6

    .line 679
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 682
    .end local v5    # "j":I
    :cond_3
    return-object v4

    .line 684
    .end local v4    # "result":[Ljava/lang/Object;
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v4, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_5

    .line 687
    :try_start_0
    aget-object v6, v0, v5

    invoke-static {v6, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 689
    :catch_0
    move-exception v6

    :goto_5
    nop

    .line 685
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 690
    .end local v5    # "i":I
    :cond_5
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v3, :cond_6

    .line 692
    :try_start_1
    aget-object v6, v2, v5

    invoke-static {v6, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 694
    :catch_1
    move-exception v6

    :goto_7
    nop

    .line 690
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 696
    .end local v5    # "j":I
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method static toAnnotationType(ZLjavassist/ClassPool;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/ParameterAnnotationsAttribute;Ljavassist/bytecode/MethodInfo;)[[Ljava/lang/Object;
    .locals 11
    .param p0, "ignoreNotFound"    # Z
    .param p1, "cp"    # Ljavassist/ClassPool;
    .param p2, "a1"    # Ljavassist/bytecode/ParameterAnnotationsAttribute;
    .param p3, "a2"    # Ljavassist/bytecode/ParameterAnnotationsAttribute;
    .param p4, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "numParameters":I
    if-eqz p2, :cond_0

    .line 707
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result v0

    goto :goto_0

    .line 708
    :cond_0
    if-eqz p3, :cond_1

    .line 709
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->numParameters()I

    move-result v0

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {p4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->numOfParameters(Ljava/lang/String;)I

    move-result v0

    .line 713
    :goto_0
    new-array v1, v0, [[Ljava/lang/Object;

    .line 714
    .local v1, "result":[[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_9

    .line 718
    if-nez p2, :cond_2

    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, "anno1":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v4, 0x0

    .local v4, "size1":I
    goto :goto_2

    .line 723
    .end local v3    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v4    # "size1":I
    :cond_2
    invoke-virtual {p2}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v3

    aget-object v3, v3, v2

    .line 724
    .restart local v3    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    array-length v4, v3

    .line 727
    .restart local v4    # "size1":I
    :goto_2
    if-nez p3, :cond_3

    .line 728
    const/4 v5, 0x0

    .line 729
    .local v5, "anno2":[Ljavassist/bytecode/annotation/Annotation;
    const/4 v6, 0x0

    .local v6, "size2":I
    goto :goto_3

    .line 732
    .end local v5    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v6    # "size2":I
    :cond_3
    invoke-virtual {p3}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object v5

    aget-object v5, v5, v2

    .line 733
    .restart local v5    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    array-length v6, v5

    .line 736
    .restart local v6    # "size2":I
    :goto_3
    if-nez p0, :cond_6

    .line 737
    add-int v7, v4, v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v7, v1, v2

    .line 738
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v4, :cond_4

    .line 739
    aget-object v8, v1, v2

    aget-object v9, v3, v7

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v7

    .line 738
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 741
    .end local v7    # "j":I
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_5
    if-ge v7, v6, :cond_5

    .line 742
    aget-object v8, v1, v2

    add-int v9, v7, v4

    aget-object v10, v5, v7

    invoke-static {v10, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    .line 741
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .end local v7    # "j":I
    :cond_5
    goto :goto_a

    .line 745
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v7, "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    if-ge v8, v4, :cond_7

    .line 748
    :try_start_0
    aget-object v9, v3, v8

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 750
    :catch_0
    move-exception v9

    :goto_7
    nop

    .line 746
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 752
    .end local v8    # "j":I
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_8
    if-ge v8, v6, :cond_8

    .line 754
    :try_start_1
    aget-object v9, v5, v8

    invoke-static {v9, p1}, Ljavassist/CtClassType;->toAnnoType(Ljavassist/bytecode/annotation/Annotation;Ljavassist/ClassPool;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 756
    :catch_1
    move-exception v9

    :goto_9
    nop

    .line 752
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 759
    .end local v8    # "j":I
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v1, v2

    .line 714
    .end local v3    # "anno1":[Ljavassist/bytecode/annotation/Annotation;
    .end local v4    # "size1":I
    .end local v5    # "anno2":[Ljavassist/bytecode/annotation/Annotation;
    .end local v6    # "size2":I
    .end local v7    # "annotations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 763
    .end local v2    # "i":I
    :cond_9
    return-object v1
.end method

.method private static updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V
    .locals 10
    .param p0, "newMod"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljavassist/CtClass;
    .param p3, "outer"    # Z

    .line 498
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 499
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 500
    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    .line 501
    .local v1, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-eqz v1, :cond_2

    .line 505
    and-int/lit8 v2, p0, -0x9

    .line 506
    .local v2, "mod":I
    invoke-virtual {v1, p1}, Ljavassist/bytecode/InnerClassesAttribute;->find(Ljava/lang/String;)I

    move-result v3

    .line 507
    .local v3, "i":I
    if-ltz v3, :cond_2

    .line 508
    invoke-virtual {v1, v3}, Ljavassist/bytecode/InnerClassesAttribute;->accessFlags(I)I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    .line 509
    .local v4, "isStatic":I
    if-nez v4, :cond_0

    invoke-static {p0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    :cond_0
    invoke-virtual {p2}, Ljavassist/CtClass;->checkModify()V

    .line 511
    invoke-static {v2}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result v5

    or-int/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Ljavassist/bytecode/InnerClassesAttribute;->setAccessFlags(II)V

    .line 512
    invoke-virtual {v1, v3}, Ljavassist/bytecode/InnerClassesAttribute;->outerClass(I)Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "outName":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 515
    :try_start_0
    invoke-virtual {p2}, Ljavassist/CtClass;->getClassPool()Ljavassist/ClassPool;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    .line 516
    .local v6, "parent":Ljavassist/CtClass;
    const/4 v7, 0x0

    invoke-static {v2, p1, v6, v7}, Ljavassist/CtClassType;->updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v6    # "parent":Ljavassist/CtClass;
    goto :goto_0

    .line 518
    :catch_0
    move-exception v6

    .line 519
    .local v6, "e":Ljavassist/NotFoundException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot find the declaring class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 523
    .end local v6    # "e":Ljavassist/NotFoundException;
    :cond_1
    :goto_0
    return-void

    .line 528
    .end local v2    # "mod":I
    .end local v3    # "i":I
    .end local v4    # "isStatic":I
    .end local v5    # "outName":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 531
    return-void

    .line 529
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " into a static class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addConstructor(Ljavassist/CtConstructor;)V
    .locals 2
    .param p1, "c"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1448
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1449
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1452
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->addConstructor(Ljavassist/CtMember;)V

    .line 1453
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1454
    return-void

    .line 1450
    :cond_0
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "cannot add"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addField(Ljavassist/CtField;Ljava/lang/String;)V
    .locals 1
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1370
    invoke-static {p2}, Ljavassist/CtField$Initializer;->byExpr(Ljava/lang/String;)Ljavassist/CtField$Initializer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClassType;->addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1371
    return-void
.end method

.method public addField(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V
    .locals 5
    .param p1, "f"    # Ljavassist/CtField;
    .param p2, "init"    # Ljavassist/CtField$Initializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1377
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1378
    invoke-virtual {p1}, Ljavassist/CtField;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_6

    .line 1381
    if-nez p2, :cond_0

    .line 1382
    invoke-virtual {p1}, Ljavassist/CtField;->getInit()Ljavassist/CtField$Initializer;

    move-result-object p2

    .line 1384
    :cond_0
    if-eqz p2, :cond_2

    .line 1385
    invoke-virtual {p1}, Ljavassist/CtField;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavassist/CtField$Initializer;->check(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p1}, Ljavassist/CtField;->getModifiers()I

    move-result v0

    .line 1387
    .local v0, "mod":I
    invoke-static {v0}, Ljavassist/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljavassist/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1389
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1390
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljavassist/CtField;->getType()Ljavassist/CtClass;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljavassist/CtField$Initializer;->getConstantValue(Ljavassist/bytecode/ConstPool;Ljavassist/CtClass;)I

    move-result v2

    .line 1391
    .local v2, "index":I
    if-eqz v2, :cond_1

    .line 1392
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v3

    new-instance v4, Ljavassist/bytecode/ConstantAttribute;

    invoke-direct {v4, v1, v2}, Ljavassist/bytecode/ConstantAttribute;-><init>(Ljavassist/bytecode/ConstPool;I)V

    invoke-virtual {v3, v4}, Ljavassist/bytecode/FieldInfo;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    const/4 p2, 0x0

    .line 1396
    .end local v1    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v2    # "index":I
    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1399
    .end local v0    # "mod":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/CtMember$Cache;->addField(Ljavassist/CtMember;)V

    .line 1400
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 1402
    if-eqz p2, :cond_5

    .line 1403
    new-instance v0, Ljavassist/FieldInitLink;

    invoke-direct {v0, p1, p2}, Ljavassist/FieldInitLink;-><init>(Ljavassist/CtField;Ljavassist/CtField$Initializer;)V

    .line 1404
    .local v0, "fil":Ljavassist/FieldInitLink;
    iget-object v1, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1405
    .local v1, "link":Ljavassist/FieldInitLink;
    if-nez v1, :cond_3

    .line 1406
    iput-object v0, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    goto :goto_3

    .line 1408
    :cond_3
    :goto_2
    iget-object v2, v1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    if-eqz v2, :cond_4

    .line 1409
    iget-object v1, v1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    goto :goto_2

    .line 1411
    :cond_4
    iput-object v0, v1, Ljavassist/FieldInitLink;->next:Ljavassist/FieldInitLink;

    .line 1414
    .end local v0    # "fil":Ljavassist/FieldInitLink;
    .end local v1    # "link":Ljavassist/FieldInitLink;
    :cond_5
    :goto_3
    return-void

    .line 1379
    :cond_6
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "cannot add"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInterface(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "anInterface"    # Ljavassist/CtClass;

    .line 857
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 858
    if-eqz p1, :cond_0

    .line 859
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addInterface(Ljava/lang/String;)V

    .line 860
    :cond_0
    return-void
.end method

.method public addMethod(Ljavassist/CtMethod;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1471
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1472
    invoke-virtual {p1}, Ljavassist/CtMethod;->getDeclaringClass()Ljavassist/CtClass;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 1475
    invoke-virtual {p1}, Ljavassist/CtMethod;->getModifiers()I

    move-result v0

    .line 1476
    .local v0, "mod":I
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 1477
    invoke-static {v0}, Ljavassist/Modifier;->isProtected(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljavassist/Modifier;->isPrivate(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1481
    or-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljavassist/CtMethod;->setModifiers(I)V

    goto :goto_0

    .line 1478
    :cond_0
    new-instance v1, Ljavassist/CannotCompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "an interface method must be public: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1479
    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1484
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljavassist/CtMember$Cache;->addMethod(Ljavassist/CtMember;)V

    .line 1485
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1486
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    .line 1487
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-virtual {p0, v1}, Ljavassist/CtClassType;->setModifiers(I)V

    .line 1488
    :cond_2
    return-void

    .line 1473
    .end local v0    # "mod":I
    :cond_3
    new-instance v0, Ljavassist/CannotCompileException;

    const-string v1, "bad declaring class"

    invoke-direct {v0, v1}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkModify()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " class is frozen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "msg":Ljava/lang/String;
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and pruned"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    .line 325
    return-void
.end method

.method compress()V
    .locals 2

    .line 247
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 248
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Ljavassist/CtClassType;->removeClassFile()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-nez v0, :cond_1

    .line 251
    invoke-direct {p0}, Ljavassist/CtClassType;->saveClassFile()V

    .line 253
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    .line 254
    return-void
.end method

.method public defrost()V
    .locals 1

    .line 329
    const-string v0, "defrost"

    invoke-direct {p0, v0}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    .line 331
    return-void
.end method

.method protected extendToString(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 110
    const-string v0, " extends ??"

    iget-boolean v1, p0, Ljavassist/CtClassType;->wasChanged:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "changed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_0
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasFrozen:Z

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "frozen "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :cond_1
    iget-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "pruned "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljavassist/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, " class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v1

    .line 125
    .local v1, "ext":Ljavassist/CtClass;
    if-eqz v1, :cond_3

    .line 126
    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "name":Ljava/lang/String;
    const-string v3, "java.lang.Object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " extends "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "ext":Ljavassist/CtClass;
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljavassist/NotFoundException;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .end local v1    # "e":Ljavassist/NotFoundException;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 137
    .local v1, "intf":[Ljavassist/CtClass;
    array-length v2, v1

    if-lez v2, :cond_4

    .line 138
    const-string v2, " implements "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 141
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "intf":[Ljavassist/CtClass;
    .end local v2    # "i":I
    :cond_5
    goto :goto_2

    .line 145
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljavassist/NotFoundException;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .end local v1    # "e":Ljavassist/NotFoundException;
    :goto_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 150
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    nop

    .line 151
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    .line 150
    const-string v3, " fields="

    invoke-direct {p0, p1, v3, v1, v2}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 152
    nop

    .line 153
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 152
    const-string v3, " constructors="

    invoke-direct {p0, p1, v3, v1, v2}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 154
    nop

    .line 155
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 154
    const-string v3, " methods="

    invoke-direct {p0, p1, v3, v1, v2}, Ljavassist/CtClassType;->exToString(Ljava/lang/StringBuffer;Ljava/lang/String;Ljavassist/CtMember;Ljavassist/CtMember;)V

    .line 156
    return-void
.end method

.method public freeze()V
    .locals 1

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return-void
.end method

.method public getAccessorMaker()Ljavassist/compiler/AccessorMaker;
    .locals 1

    .line 170
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljavassist/compiler/AccessorMaker;

    invoke-direct {v0, p0}, Ljavassist/compiler/AccessorMaker;-><init>(Ljavassist/CtClass;)V

    iput-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    .line 173
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->accessors:Ljavassist/compiler/AccessorMaker;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 585
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 586
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 587
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 588
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 589
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 590
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->getAnnotationType(Ljava/lang/Class;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public getAnnotations()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 625
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1507
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    .line 1508
    .local v0, "ai":Ljavassist/bytecode/AttributeInfo;
    if-nez v0, :cond_0

    .line 1509
    const/4 v1, 0x0

    return-object v1

    .line 1510
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/AttributeInfo;->get()[B

    move-result-object v1

    return-object v1
.end method

.method public getAvailableAnnotations()[Ljava/lang/Object;
    .locals 3

    .line 631
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->getAnnotations(Z)[Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getClassFile2()Ljavassist/bytecode/ClassFile;
    .locals 1

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavassist/CtClassType;->getClassFile3(Z)Ljavassist/bytecode/ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getClassFile3(Z)Ljavassist/bytecode/ClassFile;
    .locals 8
    .param p1, "doCompress"    # Z

    .line 182
    iget-object v0, p0, Ljavassist/CtClassType;->classfile:Ljavassist/bytecode/ClassFile;

    .line 183
    .local v0, "cfile":Ljavassist/bytecode/ClassFile;
    if-eqz v0, :cond_0

    .line 184
    return-object v0

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 187
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1}, Ljavassist/ClassPool;->compress()V

    .line 189
    :cond_1
    iget-object v1, p0, Ljavassist/CtClassType;->rawClassfile:[B

    if-eqz v1, :cond_2

    .line 191
    :try_start_0
    new-instance v1, Ljavassist/bytecode/ClassFile;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Ljavassist/CtClassType;->rawClassfile:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    .line 193
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/CtClassType;->rawClassfile:[B

    .line 194
    const/4 v2, 0x2

    iput v2, p0, Ljavassist/CtClassType;->getCount:I

    .line 195
    invoke-direct {p0, v1}, Ljavassist/CtClassType;->setClassFile(Ljavassist/bytecode/ClassFile;)Ljavassist/bytecode/ClassFile;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 197
    .end local v1    # "cf":Ljavassist/bytecode/ClassFile;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 202
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    const/4 v1, 0x0

    .line 204
    .local v1, "fin":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/ClassPool;->openClassfile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 205
    if-eqz v1, :cond_4

    .line 208
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 209
    new-instance v2, Ljavassist/bytecode/ClassFile;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V

    .line 210
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    invoke-direct {p0, v2}, Ljavassist/CtClassType;->setClassFile(Ljavassist/bytecode/ClassFile;)Ljavassist/bytecode/ClassFile;

    move-result-object v3
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    nop

    .line 226
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_0

    .line 215
    :goto_1
    return-object v3

    .line 211
    :cond_3
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 212
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavassist/CtClassType;->qualifiedName:Ljava/lang/String;

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    .line 213
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p1    # "doCompress":Z
    throw v3

    .line 206
    .end local v2    # "cf":Ljavassist/bytecode/ClassFile;
    .restart local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p1    # "doCompress":Z
    :cond_4
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p1    # "doCompress":Z
    throw v2
    :try_end_3
    .catch Ljavassist/NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    .restart local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p1    # "doCompress":Z
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 220
    :catch_2
    move-exception v2

    .line 221
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p1    # "doCompress":Z
    throw v3

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p1    # "doCompress":Z
    :catch_3
    move-exception v2

    .line 218
    .local v2, "e":Ljavassist/NotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljavassist/NotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .end local v1    # "fin":Ljava/io/InputStream;
    .end local p1    # "doCompress":Z
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .end local v2    # "e":Ljavassist/NotFoundException;
    .restart local v0    # "cfile":Ljavassist/bytecode/ClassFile;
    .restart local v1    # "fin":Ljava/io/InputStream;
    .restart local p1    # "doCompress":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 226
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 228
    :goto_3
    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_3

    .line 229
    :cond_5
    :goto_4
    throw v2
.end method

.method public getClassInitializer()Ljavassist/CtConstructor;
    .locals 5

    .line 1205
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1206
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1207
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1209
    .local v2, "consTail":Ljavassist/CtMember;
    :goto_0
    if-eq v1, v2, :cond_1

    .line 1210
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1211
    move-object v3, v1

    check-cast v3, Ljavassist/CtConstructor;

    .line 1212
    .local v3, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v3}, Ljavassist/CtConstructor;->isClassInitializer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1213
    return-object v3

    .line 1214
    .end local v3    # "cc":Ljavassist/CtConstructor;
    :cond_0
    goto :goto_0

    .line 1216
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getClassPool()Ljavassist/ClassPool;
    .locals 1

    .line 293
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-object v0
.end method

.method public getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1160
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1161
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1162
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1164
    .local v2, "consTail":Ljavassist/CtMember;
    :goto_0
    if-eq v1, v2, :cond_1

    .line 1165
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1166
    move-object v3, v1

    check-cast v3, Ljavassist/CtConstructor;

    .line 1167
    .local v3, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v3}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1168
    invoke-virtual {v3}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1169
    return-object v3

    .line 1170
    .end local v3    # "cc":Ljavassist/CtConstructor;
    :cond_0
    goto :goto_0

    .line 1172
    :cond_1
    invoke-super {p0, p1}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v3

    return-object v3
.end method

.method public getConstructors()[Ljavassist/CtConstructor;
    .locals 9

    .line 1126
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1127
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1128
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1130
    .local v2, "consTail":Ljavassist/CtMember;
    const/4 v3, 0x0

    .line 1131
    .local v3, "n":I
    move-object v4, v1

    .line 1132
    .local v4, "mem":Ljavassist/CtMember;
    :cond_0
    :goto_0
    if-eq v4, v2, :cond_1

    .line 1133
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1134
    move-object v5, v4

    check-cast v5, Ljavassist/CtConstructor;

    invoke-static {v5}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    new-array v5, v3, [Ljavassist/CtConstructor;

    .line 1139
    .local v5, "result":[Ljavassist/CtConstructor;
    const/4 v6, 0x0

    .line 1140
    .local v6, "i":I
    move-object v4, v1

    .line 1141
    :goto_1
    if-eq v4, v2, :cond_3

    .line 1142
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1143
    move-object v7, v4

    check-cast v7, Ljavassist/CtConstructor;

    .line 1144
    .local v7, "cc":Ljavassist/CtConstructor;
    invoke-static {v7}, Ljavassist/CtClassType;->isPubCons(Ljavassist/CtConstructor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1145
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aput-object v7, v5, v6

    move v6, v8

    .line 1146
    .end local v7    # "cc":Ljavassist/CtConstructor;
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_2
    goto :goto_1

    .line 1148
    :cond_3
    return-object v5
.end method

.method public getDeclaredBehaviors()[Ljavassist/CtBehavior;
    .locals 11

    .line 1101
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1102
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1103
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1104
    .local v2, "consTail":Ljavassist/CtMember;
    invoke-static {v1, v2}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v3

    .line 1105
    .local v3, "cnum":I
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v4

    .line 1106
    .local v4, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v5

    .line 1107
    .local v5, "mthTail":Ljavassist/CtMember;
    invoke-static {v4, v5}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v6

    .line 1109
    .local v6, "mnum":I
    add-int v7, v3, v6

    new-array v7, v7, [Ljavassist/CtBehavior;

    .line 1110
    .local v7, "cb":[Ljavassist/CtBehavior;
    const/4 v8, 0x0

    .line 1111
    .local v8, "i":I
    :goto_0
    if-eq v1, v2, :cond_0

    .line 1112
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1113
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    move-object v10, v1

    check-cast v10, Ljavassist/CtBehavior;

    aput-object v10, v7, v8

    move v8, v9

    goto :goto_0

    .line 1116
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    :goto_1
    if-eq v4, v5, :cond_1

    .line 1117
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1118
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .restart local v9    # "i":I
    move-object v10, v4

    check-cast v10, Ljavassist/CtBehavior;

    aput-object v10, v7, v8

    move v8, v9

    goto :goto_1

    .line 1121
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_1
    return-object v7
.end method

.method public getDeclaredConstructors()[Ljavassist/CtConstructor;
    .locals 9

    .line 1177
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1178
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->consHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1179
    .local v1, "cons":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastCons()Ljavassist/CtMember;

    move-result-object v2

    .line 1181
    .local v2, "consTail":Ljavassist/CtMember;
    const/4 v3, 0x0

    .line 1182
    .local v3, "n":I
    move-object v4, v1

    .line 1183
    .local v4, "mem":Ljavassist/CtMember;
    :goto_0
    if-eq v4, v2, :cond_1

    .line 1184
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1185
    move-object v5, v4

    check-cast v5, Ljavassist/CtConstructor;

    .line 1186
    .local v5, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v5}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1187
    add-int/lit8 v3, v3, 0x1

    .line 1188
    .end local v5    # "cc":Ljavassist/CtConstructor;
    :cond_0
    goto :goto_0

    .line 1190
    :cond_1
    new-array v5, v3, [Ljavassist/CtConstructor;

    .line 1191
    .local v5, "result":[Ljavassist/CtConstructor;
    const/4 v6, 0x0

    .line 1192
    .local v6, "i":I
    move-object v4, v1

    .line 1193
    :goto_1
    if-eq v4, v2, :cond_3

    .line 1194
    invoke-virtual {v4}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v4

    .line 1195
    move-object v7, v4

    check-cast v7, Ljavassist/CtConstructor;

    .line 1196
    .local v7, "cc":Ljavassist/CtConstructor;
    invoke-virtual {v7}, Ljavassist/CtConstructor;->isConstructor()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1197
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aput-object v7, v5, v6

    move v6, v8

    .line 1198
    .end local v7    # "cc":Ljavassist/CtConstructor;
    .end local v8    # "i":I
    .restart local v6    # "i":I
    :cond_2
    goto :goto_1

    .line 1200
    :cond_3
    return-object v5
.end method

.method public getDeclaredField(Ljava/lang/String;)Ljavassist/CtField;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavassist/CtClassType;->getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1081
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 1082
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1

    return-object v1
.end method

.method public getDeclaredFields()[Ljavassist/CtField;
    .locals 8

    .line 1060
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1061
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->fieldHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1062
    .local v1, "field":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastField()Ljavassist/CtMember;

    move-result-object v2

    .line 1063
    .local v2, "tail":Ljavassist/CtMember;
    invoke-static {v1, v2}, Ljavassist/CtMember$Cache;->count(Ljavassist/CtMember;Ljavassist/CtMember;)I

    move-result v3

    .line 1064
    .local v3, "num":I
    new-array v4, v3, [Ljavassist/CtField;

    .line 1065
    .local v4, "cfs":[Ljavassist/CtField;
    const/4 v5, 0x0

    .line 1066
    .local v5, "i":I
    :goto_0
    if-eq v1, v2, :cond_0

    .line 1067
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1068
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    move-object v7, v1

    check-cast v7, Ljavassist/CtField;

    aput-object v7, v4, v5

    move v5, v6

    goto :goto_0

    .line 1071
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method public getDeclaredMethod(Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1333
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1334
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1335
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1336
    .local v2, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v1, v2, :cond_1

    .line 1337
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1338
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1339
    move-object v3, v1

    check-cast v3, Ljavassist/CtMethod;

    return-object v3

    .line 1342
    :cond_1
    new-instance v3, Ljavassist/NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(..) is not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1343
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Ljavassist/CtClass;)Ljavassist/CtMethod;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1350
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->ofParameters([Ljavassist/CtClass;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "desc":Ljava/lang/String;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v1

    .line 1352
    .local v1, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v2

    .line 1353
    .local v2, "mth":Ljavassist/CtMember;
    invoke-virtual {v1}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v3

    .line 1355
    .local v3, "mthTail":Ljavassist/CtMember;
    :cond_0
    if-eq v2, v3, :cond_1

    .line 1356
    invoke-virtual {v2}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v2

    .line 1357
    invoke-virtual {v2}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljavassist/CtMethod;

    .line 1358
    invoke-virtual {v4}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v4

    invoke-virtual {v4}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1359
    move-object v4, v2

    check-cast v4, Ljavassist/CtMethod;

    return-object v4

    .line 1362
    :cond_1
    new-instance v4, Ljavassist/NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(..) is not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1363
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getDeclaredMethods()[Ljavassist/CtMethod;
    .locals 5

    .line 1304
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1305
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1306
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1307
    .local v2, "mthTail":Ljavassist/CtMember;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1308
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtMember;>;"
    :goto_0
    if-eq v1, v2, :cond_0

    .line 1309
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1310
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1313
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavassist/CtMethod;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavassist/CtMethod;

    return-object v4
.end method

.method public getDeclaredMethods(Ljava/lang/String;)[Ljavassist/CtMethod;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v0

    .line 1319
    .local v0, "memCache":Ljavassist/CtMember$Cache;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->methodHead()Ljavassist/CtMember;

    move-result-object v1

    .line 1320
    .local v1, "mth":Ljavassist/CtMember;
    invoke-virtual {v0}, Ljavassist/CtMember$Cache;->lastMethod()Ljavassist/CtMember;

    move-result-object v2

    .line 1321
    .local v2, "mthTail":Ljavassist/CtMember;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtMember;>;"
    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    .line 1323
    invoke-virtual {v1}, Ljavassist/CtMember;->next()Ljavassist/CtMember;

    move-result-object v1

    .line 1324
    invoke-virtual {v1}, Ljavassist/CtMember;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1325
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1328
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavassist/CtMethod;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavassist/CtMethod;

    return-object v4
.end method

.method public getDeclaringClass()Ljavassist/CtClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 864
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 865
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    .line 867
    .local v1, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 868
    return-object v2

    .line 870
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v4

    .line 872
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 873
    invoke-virtual {v1, v5}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 874
    invoke-virtual {v1, v5}, Ljavassist/bytecode/InnerClassesAttribute;->outerClass(I)Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, "outName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 876
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    return-object v2

    .line 879
    :cond_1
    nop

    .line 880
    const-string v7, "EnclosingMethod"

    invoke-virtual {v0, v7}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v7

    check-cast v7, Ljavassist/bytecode/EnclosingMethodAttribute;

    .line 882
    .local v7, "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    if-eqz v7, :cond_2

    .line 883
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    return-object v2

    .line 872
    .end local v6    # "outName":Ljava/lang/String;
    .end local v7    # "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 887
    .end local v5    # "i":I
    :cond_3
    return-object v2
.end method

.method public getEnclosingBehavior()Ljavassist/CtBehavior;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 893
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 894
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 895
    const-string v1, "EnclosingMethod"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/EnclosingMethodAttribute;

    .line 897
    .local v1, "ema":Ljavassist/bytecode/EnclosingMethodAttribute;
    if-nez v1, :cond_0

    .line 898
    const/4 v2, 0x0

    return-object v2

    .line 899
    :cond_0
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->className()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v2

    .line 900
    .local v2, "enc":Ljavassist/CtClass;
    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodName()Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, "name":Ljava/lang/String;
    const-string v4, "<init>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 902
    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavassist/CtClass;->getConstructor(Ljava/lang/String;)Ljavassist/CtConstructor;

    move-result-object v4

    return-object v4

    .line 903
    :cond_1
    const-string v4, "<clinit>"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 904
    invoke-virtual {v2}, Ljavassist/CtClass;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v4

    return-object v4

    .line 906
    :cond_2
    invoke-virtual {v1}, Ljavassist/bytecode/EnclosingMethodAttribute;->methodDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavassist/CtClass;->getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v4

    return-object v4
.end method

.method public getField(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1019
    invoke-virtual {p0, p1, p2}, Ljavassist/CtClassType;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 1020
    .local v0, "f":Ljavassist/CtField;
    invoke-direct {p0, v0, p1, p2}, Ljavassist/CtClassType;->checkGetField(Ljavassist/CtField;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v1

    return-object v1
.end method

.method getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1038
    invoke-direct {p0, p1, p2}, Ljavassist/CtClassType;->getDeclaredField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v0

    .line 1039
    .local v0, "df":Ljavassist/CtField;
    if-eqz v0, :cond_0

    .line 1040
    return-object v0

    .line 1043
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getInterfaces()[Ljavassist/CtClass;

    move-result-object v1

    .line 1044
    .local v1, "ifs":[Ljavassist/CtClass;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1045
    .local v4, "ctc":Ljavassist/CtClass;
    invoke-virtual {v4, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v5

    .line 1046
    .local v5, "f":Ljavassist/CtField;
    if-eqz v5, :cond_1

    .line 1047
    return-object v5

    .line 1044
    .end local v4    # "ctc":Ljavassist/CtClass;
    .end local v5    # "f":Ljavassist/CtField;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {p0}, Ljavassist/CtClassType;->getSuperclass()Ljavassist/CtClass;

    move-result-object v2

    .line 1051
    .local v2, "s":Ljavassist/CtClass;
    if-eqz v2, :cond_3

    .line 1052
    invoke-virtual {v2, p1, p2}, Ljavassist/CtClass;->getField2(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtField;

    move-result-object v3
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1051
    .end local v1    # "ifs":[Ljavassist/CtClass;
    .end local v2    # "s":Ljavassist/CtClass;
    :cond_3
    goto :goto_1

    .line 1054
    :catch_0
    move-exception v1

    :goto_1
    nop

    .line 1055
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFields()[Ljavassist/CtField;
    .locals 2

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v0, "alist":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtMember;>;"
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getFields(Ljava/util/List;Ljavassist/CtClass;)V

    .line 988
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavassist/CtField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/CtField;

    return-object v1
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 2

    .line 378
    nop

    .line 379
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    const-string v1, "Signature"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SignatureAttribute;

    .line 380
    .local v0, "sa":Ljavassist/bytecode/SignatureAttribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SignatureAttribute;->getSignature()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getHiddenMethods()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavassist/CtMethod;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1785
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1786
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Map;

    .line 1788
    :cond_0
    iget-object v0, p0, Ljavassist/CtClassType;->hiddenMethods:Ljava/util/Map;

    return-object v0
.end method

.method public getInterfaces()[Ljavassist/CtClass;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 830
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "ifs":[Ljava/lang/String;
    array-length v1, v0

    .line 832
    .local v1, "num":I
    new-array v2, v1, [Ljavassist/CtClass;

    .line 833
    .local v2, "ifc":[Ljavassist/CtClass;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 834
    iget-object v4, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v4

    aput-object v4, v2, v3

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method protected declared-synchronized getMembers()Ljavassist/CtMember$Cache;
    .locals 2

    monitor-enter p0

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "cache":Ljavassist/CtMember$Cache;
    :try_start_0
    iget-object v1, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    .line 959
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/CtMember$Cache;

    move-object v0, v1

    if-nez v1, :cond_1

    .line 960
    .end local p0    # "this":Ljavassist/CtClassType;
    :cond_0
    new-instance v1, Ljavassist/CtMember$Cache;

    invoke-direct {v1, p0}, Ljavassist/CtMember$Cache;-><init>(Ljavassist/CtClassType;)V

    move-object v0, v1

    .line 961
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeFieldCache(Ljavassist/CtMember$Cache;)V

    .line 962
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeBehaviorCache(Ljavassist/CtMember$Cache;)V

    .line 963
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    :cond_1
    monitor-exit p0

    return-object v0

    .line 956
    .end local v0    # "cache":Ljavassist/CtMember$Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMethod(Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1258
    invoke-static {p0, p1, p2}, Ljavassist/CtClassType;->getMethod0(Ljavassist/CtClass;Ljava/lang/String;Ljava/lang/String;)Ljavassist/CtMethod;

    move-result-object v0

    .line 1259
    .local v0, "m":Ljavassist/CtMethod;
    if-eqz v0, :cond_0

    .line 1260
    return-object v0

    .line 1261
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(..) is not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1262
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMethods()[Ljavassist/CtMethod;
    .locals 3

    .line 1221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .local v0, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtMember;>;"
    invoke-static {v0, p0}, Ljavassist/CtClassType;->getMethods0(Ljava/util/Map;Ljavassist/CtClass;)V

    .line 1223
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljavassist/CtMethod;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavassist/CtMethod;

    return-object v1
.end method

.method public getModifiers()I
    .locals 4

    .line 445
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 446
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v1

    .line 447
    .local v1, "acc":I
    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljavassist/bytecode/AccessFlag;->clear(II)I

    move-result v1

    .line 448
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getInnerAccessFlags()I

    move-result v2

    .line 449
    .local v2, "inner":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 450
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    .line 451
    or-int/lit8 v1, v1, 0x8

    .line 452
    :cond_0
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 453
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    :cond_1
    and-int/lit8 v1, v1, -0x2

    .line 456
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_2

    .line 457
    or-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 458
    :cond_2
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 459
    or-int/lit8 v1, v1, 0x2

    .line 462
    :cond_3
    :goto_0
    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->toModifier(I)I

    move-result v3

    return v3
.end method

.method public getNestedClasses()[Ljavassist/CtClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 468
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 469
    const-string v1, "InnerClasses"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/InnerClassesAttribute;

    .line 470
    .local v1, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v1, :cond_0

    .line 471
    const/4 v2, 0x0

    new-array v2, v2, [Ljavassist/CtClass;

    return-object v2

    .line 473
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "thisName":Ljava/lang/String;
    invoke-virtual {v1}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v3

    .line 475
    .local v3, "n":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljavassist/CtClass;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 477
    invoke-virtual {v1, v5}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 479
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 481
    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 482
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v6}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v5    # "i":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljavassist/CtClass;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavassist/CtClass;

    return-object v5
.end method

.method public getSuperclass()Ljavassist/CtClass;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 813
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "supername":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 815
    const/4 v1, 0x0

    return-object v1

    .line 816
    :cond_0
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, v0}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v1

    return-object v1
.end method

.method public getURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->find(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 300
    .local v0, "url":Ljava/net/URL;
    if-eqz v0, :cond_0

    .line 302
    return-object v0

    .line 301
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getUniqueNumber()I
    .locals 2

    .line 1791
    iget v0, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavassist/CtClassType;->uniqueNumberSeed:I

    return v0
.end method

.method public hasAnnotation(Ljava/lang/String;)Z
    .locals 4
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 535
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 536
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    nop

    .line 537
    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AnnotationsAttribute;

    .line 538
    .local v1, "ainfo":Ljavassist/bytecode/AnnotationsAttribute;
    nop

    .line 539
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/AnnotationsAttribute;

    .line 540
    .local v2, "ainfo2":Ljavassist/bytecode/AnnotationsAttribute;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassPool()Ljavassist/ClassPool;

    move-result-object v3

    invoke-static {p1, v3, v1, v2}, Ljavassist/CtClassType;->hasAnnotationType(Ljava/lang/String;Ljavassist/ClassPool;Ljavassist/bytecode/AnnotationsAttribute;Ljavassist/bytecode/AnnotationsAttribute;)Z

    move-result v3

    return v3
.end method

.method protected hasMemberCache()Ljavassist/CtMember$Cache;
    .locals 1

    .line 951
    iget-object v0, p0, Ljavassist/CtClassType;->memberCache:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtMember$Cache;

    return-object v0

    .line 953
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final incGetCounter()V
    .locals 1

    .line 238
    iget v0, p0, Ljavassist/CtClassType;->getCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavassist/CtClassType;->getCount:I

    return-void
.end method

.method public instrument(Ljavassist/CodeConverter;)V
    .locals 7
    .param p1, "converter"    # Ljavassist/CodeConverter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1525
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1526
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1527
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 1528
    .local v1, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    .line 1529
    .local v2, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavassist/bytecode/MethodInfo;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavassist/bytecode/MethodInfo;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 1530
    .local v6, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1, p0, v6, v1}, Ljavassist/CodeConverter;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;)V

    .line 1529
    .end local v6    # "minfo":Ljavassist/bytecode/MethodInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1531
    :cond_0
    return-void
.end method

.method public instrument(Ljavassist/expr/ExprEditor;)V
    .locals 6
    .param p1, "editor"    # Ljavassist/expr/ExprEditor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1538
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1539
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v1

    .line 1540
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/MethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavassist/bytecode/MethodInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavassist/bytecode/MethodInfo;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 1541
    .local v5, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p1, p0, v5}, Ljavassist/expr/ExprEditor;->doit(Ljavassist/CtClass;Ljavassist/bytecode/MethodInfo;)Z

    .line 1540
    .end local v5    # "minfo":Ljavassist/bytecode/MethodInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1542
    :cond_0
    return-void
.end method

.method public isAnnotation()Z
    .locals 1

    .line 435
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isAnnotation(I)Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    .line 440
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isEnum(I)Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Ljavassist/CtClassType;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljavassist/Modifier;->isInterface(I)Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasChanged:Z

    return v0
.end method

.method public makeClassInitializer()Ljavassist/CtConstructor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v0

    .line 1434
    .local v0, "clinit":Ljavassist/CtConstructor;
    if-eqz v0, :cond_0

    .line 1435
    return-object v0

    .line 1437
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1438
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1439
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1440
    .local v2, "code":Ljavassist/bytecode/Bytecode;
    invoke-direct {p0, v1, v2, v4, v4}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/Bytecode;II)V

    .line 1441
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassInitializer()Ljavassist/CtConstructor;

    move-result-object v3

    return-object v3
.end method

.method public makeNestedClass(Ljava/lang/String;Z)Ljavassist/CtClass;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z

    .line 912
    if-eqz p2, :cond_1

    .line 916
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 917
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/ClassPool;->makeNestedClass(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 918
    .local v0, "c":Ljavassist/CtClass;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 919
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v0}, Ljavassist/CtClass;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 920
    .local v2, "cf2":Ljavassist/bytecode/ClassFile;
    const-string v3, "InnerClasses"

    invoke-virtual {v1, v3}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/InnerClassesAttribute;

    .line 922
    .local v3, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    if-nez v3, :cond_0

    .line 923
    new-instance v4, Ljavassist/bytecode/InnerClassesAttribute;

    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavassist/bytecode/InnerClassesAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    move-object v3, v4

    .line 924
    invoke-virtual {v1, v3}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 927
    :cond_0
    invoke-virtual {v0}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 928
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getAccessFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x21

    or-int/lit8 v6, v6, 0x8

    .line 927
    invoke-virtual {v3, v4, v5, p1, v6}, Ljavassist/bytecode/InnerClassesAttribute;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 929
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljavassist/bytecode/InnerClassesAttribute;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 930
    return-object v0

    .line 913
    .end local v0    # "c":Ljavassist/CtClass;
    .end local v1    # "cf":Ljavassist/bytecode/ClassFile;
    .end local v2    # "cf2":Ljavassist/bytecode/ClassFile;
    .end local v3    # "ica":Ljavassist/bytecode/InnerClassesAttribute;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "sorry, only nested static class is supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public makeUniqueName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1796
    .local v0, "table":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljavassist/CtClassType;>;"
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->makeMemberList(Ljava/util/Map;)V

    .line 1797
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1798
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1799
    .local v2, "methods":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1801
    invoke-static {p1, v2}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1802
    return-object p1

    .line 1804
    :cond_0
    const/16 v3, 0x64

    .line 1807
    .local v3, "i":I
    :goto_0
    const/16 v4, 0x3e7

    if-gt v3, v4, :cond_2

    .line 1810
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1811
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3, v2}, Ljavassist/CtClassType;->notFindInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1812
    return-object v3

    .line 1811
    :cond_1
    move v3, v5

    goto :goto_0

    .line 1808
    .end local v5    # "i":I
    .local v3, "i":I
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "too many unique name"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public prune()V
    .locals 1

    .line 1551
    iget-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    if-eqz v0, :cond_0

    .line 1552
    return-void

    .line 1554
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasFrozen:Z

    iput-boolean v0, p0, Ljavassist/CtClassType;->wasPruned:Z

    .line 1555
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    .line 1556
    return-void
.end method

.method public rebuildClassFile()V
    .locals 1

    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/CtClassType;->gcConstPool:Z

    return-void
.end method

.method public removeConstructor(Ljavassist/CtConstructor;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtConstructor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1458
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1459
    invoke-virtual {p1}, Ljavassist/CtConstructor;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 1460
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1461
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1462
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1463
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1467
    return-void

    .line 1466
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtConstructor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeField(Ljavassist/CtField;)V
    .locals 4
    .param p1, "f"    # Ljavassist/CtField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1418
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1419
    invoke-virtual {p1}, Ljavassist/CtField;->getFieldInfo2()Ljavassist/bytecode/FieldInfo;

    move-result-object v0

    .line 1420
    .local v0, "fi":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1421
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1423
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1427
    return-void

    .line 1426
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeMethod(Ljavassist/CtMethod;)V
    .locals 4
    .param p1, "m"    # Ljavassist/CtMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1494
    invoke-virtual {p1}, Ljavassist/CtMethod;->getMethodInfo2()Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    .line 1495
    .local v0, "mi":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 1496
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v1}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1497
    invoke-virtual {p0}, Ljavassist/CtClassType;->getMembers()Ljavassist/CtMember$Cache;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavassist/CtMember$Cache;->remove(Ljavassist/CtMember;)V

    .line 1498
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1502
    return-void

    .line 1501
    :cond_0
    new-instance v2, Ljavassist/NotFoundException;

    invoke-virtual {p1}, Ljavassist/CtMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public replaceClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "thisname":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0, p2}, Ljavassist/CtClassType;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-super {p0, p1, p2}, Ljavassist/CtClass;->replaceClassName(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 426
    :goto_0
    return-void
.end method

.method public replaceClassName(Ljavassist/ClassMap;)V
    .locals 4
    .param p1, "classnames"    # Ljavassist/ClassMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "oldClassName":Ljava/lang/String;
    nop

    .line 396
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavassist/ClassMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "newClassName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 398
    invoke-static {v1}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-super {p0, p1}, Ljavassist/CtClass;->replaceClassName(Ljavassist/ClassMap;)V

    .line 404
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 405
    .local v2, "cf":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v2, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/util/Map;)V

    .line 406
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 408
    if-eqz v1, :cond_1

    .line 409
    invoke-super {p0, v1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v3, v0, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    .line 412
    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 1516
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 1517
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1518
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v1, Ljavassist/bytecode/AttributeInfo;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 1519
    return-void
.end method

.method setClassPool(Ljavassist/ClassPool;)V
    .locals 0
    .param p1, "cp"    # Ljavassist/ClassPool;

    .line 295
    iput-object p1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 3
    .param p1, "sig"    # Ljava/lang/String;

    .line 385
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 386
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    new-instance v1, Ljavassist/bytecode/SignatureAttribute;

    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 387
    .local v1, "sa":Ljavassist/bytecode/SignatureAttribute;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 388
    return-void
.end method

.method public setInterfaces([Ljavassist/CtClass;)V
    .locals 4
    .param p1, "list"    # [Ljavassist/CtClass;

    .line 841
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 843
    if-nez p1, :cond_0

    .line 844
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .local v0, "ifs":[Ljava/lang/String;
    goto :goto_1

    .line 846
    .end local v0    # "ifs":[Ljava/lang/String;
    :cond_0
    array-length v0, p1

    .line 847
    .local v0, "num":I
    new-array v1, v0, [Ljava/lang/String;

    .line 848
    .local v1, "ifs":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 849
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 852
    .end local v1    # "ifs":[Ljava/lang/String;
    .end local v2    # "i":I
    .local v0, "ifs":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public setModifiers(I)V
    .locals 2
    .param p1, "mod"    # I

    .line 491
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 492
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, p0, v1}, Ljavassist/CtClassType;->updateInnerEntry(ILjava/lang/String;Ljavassist/CtClass;Z)V

    .line 493
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 494
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    and-int/lit8 v1, p1, -0x9

    invoke-static {v1}, Ljavassist/bytecode/AccessFlag;->of(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->setAccessFlags(I)V

    .line 495
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "oldname":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v1, p1}, Ljavassist/ClassPool;->checkNotFrozen(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v1

    .line 370
    .local v1, "cf":Ljavassist/bytecode/ClassFile;
    invoke-super {p0, p1}, Ljavassist/CtClass;->setName(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1, p1}, Ljavassist/bytecode/ClassFile;->setName(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Ljavassist/CtClassType;->nameReplaced()V

    .line 373
    iget-object v2, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v2, v0, p0}, Ljavassist/ClassPool;->classNameChanged(Ljava/lang/String;Ljavassist/CtClass;)V

    .line 374
    return-void
.end method

.method public setSuperclass(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 821
    invoke-virtual {p0}, Ljavassist/CtClassType;->checkModify()V

    .line 822
    invoke-virtual {p0}, Ljavassist/CtClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p0, p1}, Ljavassist/CtClassType;->addInterface(Ljavassist/CtClass;)V

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->setSuperclass(Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void
.end method

.method public stopPruning(Z)Z
    .locals 2
    .param p1, "stop"    # Z

    .line 1628
    iget-boolean v0, p0, Ljavassist/CtClassType;->doPruning:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1629
    .local v0, "prev":Z
    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, p0, Ljavassist/CtClassType;->doPruning:Z

    .line 1630
    return v0
.end method

.method public subclassOf(Ljavassist/CtClass;)Z
    .locals 4
    .param p1, "superclass"    # Ljavassist/CtClass;

    .line 794
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 795
    return v0

    .line 797
    :cond_0
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "superName":Ljava/lang/String;
    move-object v2, p0

    .line 800
    .local v2, "curr":Ljavassist/CtClass;
    :goto_0
    if-eqz v2, :cond_2

    .line 801
    :try_start_0
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    const/4 v0, 0x1

    return v0

    .line 804
    :cond_1
    invoke-virtual {v2}, Ljavassist/CtClass;->getSuperclass()Ljavassist/CtClass;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 807
    :catch_0
    move-exception v3

    :cond_2
    nop

    .line 808
    return v0
.end method

.method public subtypeOf(Ljavassist/CtClass;)Z
    .locals 9
    .param p1, "clazz"    # Ljavassist/CtClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "cname":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, p1, :cond_7

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 340
    :cond_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v2

    .line 341
    .local v2, "file":Ljavassist/bytecode/ClassFile;
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "supername":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    return v1

    .line 345
    :cond_1
    invoke-virtual {v2}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "ifs":[Ljava/lang/String;
    array-length v5, v4

    .line 347
    .local v5, "num":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 348
    aget-object v7, v4, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 349
    return v1

    .line 347
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 351
    :cond_3
    if-eqz v3, :cond_4

    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {v7, v3}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    return v1

    .line 354
    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    .line 355
    iget-object v7, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljavassist/ClassPool;->get(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljavassist/CtClass;->subtypeOf(Ljavassist/CtClass;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 356
    return v1

    .line 354
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 358
    :cond_6
    const/4 v1, 0x0

    return v1

    .line 338
    .end local v2    # "file":Ljavassist/bytecode/ClassFile;
    .end local v3    # "supername":Ljava/lang/String;
    .end local v4    # "ifs":[Ljava/lang/String;
    .end local v5    # "num":I
    .end local v6    # "i":I
    :cond_7
    :goto_2
    return v1
.end method

.method public toBytecode(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1566
    :try_start_0
    invoke-virtual {p0}, Ljavassist/CtClassType;->isModified()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1567
    const-string v0, "toBytecode"

    invoke-direct {p0, v0}, Ljavassist/CtClassType;->checkPruned(Ljava/lang/String;)V

    .line 1568
    invoke-virtual {p0}, Ljavassist/CtClassType;->getClassFile2()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 1569
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    iget-boolean v3, p0, Ljavassist/CtClassType;->gcConstPool:Z

    if-eqz v3, :cond_0

    .line 1570
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->compact()V

    .line 1571
    iput-boolean v2, p0, Ljavassist/CtClassType;->gcConstPool:Z

    .line 1574
    :cond_0
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyClassConstructor(Ljavassist/bytecode/ClassFile;)V

    .line 1575
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->modifyConstructors(Ljavassist/bytecode/ClassFile;)V

    .line 1576
    sget-object v3, Ljavassist/CtClassType;->debugDump:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1577
    invoke-direct {p0, v0}, Ljavassist/CtClassType;->dumpClassFile(Ljavassist/bytecode/ClassFile;)V

    .line 1579
    :cond_1
    invoke-virtual {v0, p1}, Ljavassist/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 1580
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 1581
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/CtClassType;->fieldInitializers:Ljavassist/FieldInitLink;

    .line 1582
    iget-boolean v3, p0, Ljavassist/CtClassType;->doPruning:Z

    if-eqz v3, :cond_2

    .line 1584
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->prune()V

    .line 1585
    iput-boolean v1, p0, Ljavassist/CtClassType;->wasPruned:Z

    .line 1587
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    :cond_2
    goto :goto_0

    .line 1589
    :cond_3
    iget-object v0, p0, Ljavassist/CtClassType;->classPool:Ljavassist/ClassPool;

    invoke-virtual {p0}, Ljavassist/CtClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljavassist/ClassPool;->writeClassfile(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 1594
    :goto_0
    iput v2, p0, Ljavassist/CtClassType;->getCount:I

    .line 1595
    iput-boolean v1, p0, Ljavassist/CtClassType;->wasFrozen:Z
    :try_end_0
    .catch Ljavassist/NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1602
    nop

    .line 1603
    return-void

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1597
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1598
    .local v0, "e":Ljavassist/NotFoundException;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v1
.end method
