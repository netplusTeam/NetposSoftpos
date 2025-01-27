.class public final Ljavassist/bytecode/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# static fields
.field public static final JAVA_1:I = 0x2d

.field public static final JAVA_10:I = 0x36

.field public static final JAVA_11:I = 0x37

.field public static final JAVA_2:I = 0x2e

.field public static final JAVA_3:I = 0x2f

.field public static final JAVA_4:I = 0x30

.field public static final JAVA_5:I = 0x31

.field public static final JAVA_6:I = 0x32

.field public static final JAVA_7:I = 0x33

.field public static final JAVA_8:I = 0x34

.field public static final JAVA_9:I = 0x35

.field public static final MAJOR_VERSION:I


# instance fields
.field accessFlags:I

.field attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field cachedInterfaces:[Ljava/lang/String;

.field cachedSuperclass:Ljava/lang/String;

.field constPool:Ljavassist/bytecode/ConstPool;

.field fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field interfaces:[I

.field major:I

.field methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field minor:I

.field superClass:I

.field thisClass:I

.field thisclassname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 160
    const/16 v0, 0x2f

    .line 162
    .local v0, "ver":I
    :try_start_0
    const-string v1, "java.lang.StringBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 163
    const/16 v0, 0x31

    .line 164
    const-string v1, "java.util.zip.DeflaterInputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    const/16 v0, 0x32

    .line 166
    const-string v1, "java.lang.invoke.CallSite"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 167
    const/16 v0, 0x33

    .line 168
    const-string v1, "java.util.function.Function"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 169
    const/16 v0, 0x34

    .line 170
    const-string v1, "java.lang.Module"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 171
    const/16 v0, 0x35

    .line 172
    const-class v1, Ljava/util/List;

    const-string v2, "copyOf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/util/Collection;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 173
    const/16 v0, 0x36

    .line 174
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isEmpty"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    const/16 v0, 0x37

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v1

    :goto_0
    nop

    .line 178
    sput v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    .line 179
    .end local v0    # "ver":I
    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->read(Ljava/io/DataInputStream;)V

    .line 186
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "isInterface"    # Z
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "superclass"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 201
    new-instance v0, Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 202
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const/16 v0, 0x600

    iput v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    goto :goto_0

    .line 206
    :cond_0
    const/16 v0, 0x20

    iput v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 208
    :goto_0
    invoke-direct {p0, p3}, Ljavassist/bytecode/ClassFile;->initSuperclass(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    .line 212
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    .line 215
    new-instance v1, Ljavassist/bytecode/SourceFileAttribute;

    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 216
    invoke-static {v3}, Ljavassist/bytecode/ClassFile;->getSourcefileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavassist/bytecode/SourceFileAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method private compact0()Ljavassist/bytecode/ConstPool;
    .locals 6

    .line 252
    new-instance v0, Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {v0}, Ljavassist/bytecode/ConstPool;->getThisClassInfo()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 254
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "sc":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 258
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-eqz v2, :cond_1

    .line 259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 260
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget v5, v3, v2

    .line 261
    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static getSourcefileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "qname"    # Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^.*\\."

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initSuperclass(Ljava/lang/String;)V
    .locals 2
    .param p1, "superclass"    # Ljava/lang/String;

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 222
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 226
    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 228
    :goto_0
    return-void
.end method

.method private static isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z
    .locals 3
    .param p0, "newMethod"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "newName"    # Ljava/lang/String;
    .param p2, "newDesc"    # Ljava/lang/String;
    .param p3, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/MethodInfo;",
            "Ljava/util/ListIterator<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;)Z"
        }
    .end annotation

    .line 692
    .local p4, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavassist/bytecode/MethodInfo;>;"
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 693
    return v1

    .line 695
    :cond_0
    invoke-virtual {p3}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "desc":Ljava/lang/String;
    invoke-static {v0, p2}, Ljavassist/bytecode/Descriptor;->eqParamTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 697
    return v1

    .line 699
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 700
    invoke-static {p3}, Ljavassist/bytecode/ClassFile;->notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    const/4 v1, 0x1

    return v1

    .line 704
    :cond_2
    invoke-interface {p4}, Ljava/util/ListIterator;->remove()V

    .line 705
    return v1

    .line 707
    :cond_3
    return v1
.end method

.method private static notBridgeMethod(Ljavassist/bytecode/MethodInfo;)Z
    .locals 1
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;

    .line 714
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private read(Ljava/io/DataInputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 789
    .local v0, "magic":I
    const v1, -0x35014542    # -8346975.0f

    if-ne v0, v1, :cond_5

    .line 792
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 793
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 794
    new-instance v1, Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, p1}, Ljavassist/bytecode/ConstPool;-><init>(Ljava/io/DataInputStream;)V

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 795
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 796
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    .line 797
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/ConstPool;->setThisClassInfo(I)V

    .line 798
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 799
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 800
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 801
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    goto :goto_1

    .line 803
    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 804
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 805
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, v3, v2

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 809
    .local v2, "cp":Ljavassist/bytecode/ConstPool;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    .line 811
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 812
    new-instance v4, Ljavassist/bytecode/FieldInfo;

    invoke-direct {v4, v2, p1}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addField2(Ljavassist/bytecode/FieldInfo;)V

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 814
    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 815
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    .line 816
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    .line 817
    new-instance v4, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v4, v2, p1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addMethod2(Ljavassist/bytecode/MethodInfo;)V

    .line 816
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 819
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    .line 820
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 821
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_4

    .line 822
    invoke-static {v2, p1}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 821
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 824
    :cond_4
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v5, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {v4, v5}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 825
    return-void

    .line 790
    .end local v1    # "n":I
    .end local v2    # "cp":Ljavassist/bytecode/ConstPool;
    .end local v3    # "i":I
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad magic number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private testExistingField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 616
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 617
    .local v1, "minfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .end local v1    # "minfo":Ljavassist/bytecode/FieldInfo;
    goto :goto_0

    .line 618
    .restart local v1    # "minfo":Ljavassist/bytecode/FieldInfo;
    :cond_0
    new-instance v0, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    .end local v1    # "minfo":Ljavassist/bytecode/FieldInfo;
    :cond_1
    return-void
.end method

.method private testExistingMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 6
    .param p1, "newMinfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 679
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "descriptor":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 682
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavassist/bytecode/MethodInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    invoke-static {p1, v0, v1, v3, v2}, Ljavassist/bytecode/ClassFile;->isDuplicated(Ljavassist/bytecode/MethodInfo;Ljava/lang/String;Ljava/lang/String;Ljavassist/bytecode/MethodInfo;Ljava/util/ListIterator;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    new-instance v3, Ljavassist/bytecode/DuplicateMemberException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 685
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavassist/bytecode/DuplicateMemberException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 686
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttribute(Ljavassist/bytecode/AttributeInfo;)V
    .locals 2
    .param p1, "info"    # Ljavassist/bytecode/AttributeInfo;

    .line 769
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-virtual {p1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    .line 770
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method public addField(Ljavassist/bytecode/FieldInfo;)V
    .locals 2
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/ClassFile;->testExistingField(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    return-void
.end method

.method public final addField2(Ljavassist/bytecode/FieldInfo;)V
    .locals 1
    .param p1, "finfo"    # Ljavassist/bytecode/FieldInfo;

    .line 611
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 568
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "info":I
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 570
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 571
    aput v0, v1, v2

    goto :goto_0

    .line 574
    :cond_0
    array-length v3, v1

    .line 575
    .local v3, "n":I
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [I

    .line 576
    .local v4, "newarray":[I
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    aput v0, v4, v3

    .line 578
    iput-object v4, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 580
    .end local v3    # "n":I
    .end local v4    # "newarray":[I
    :goto_0
    return-void
.end method

.method public addMethod(Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/bytecode/DuplicateMemberException;
        }
    .end annotation

    .line 660
    invoke-direct {p0, p1}, Ljavassist/bytecode/ClassFile;->testExistingMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 661
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method public final addMethod2(Ljavassist/bytecode/MethodInfo;)V
    .locals 1
    .param p1, "minfo"    # Ljavassist/bytecode/MethodInfo;

    .line 673
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    return-void
.end method

.method public compact()V
    .locals 3

    .line 240
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 241
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/MethodInfo;

    .line 242
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2, v0}, Ljavassist/bytecode/MethodInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    goto :goto_0

    .line 244
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/FieldInfo;

    .line 245
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2, v0}, Ljavassist/bytecode/FieldInfo;->compact(Ljavassist/bytecode/ConstPool;)V

    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    goto :goto_1

    .line 247
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v1, v0}, Ljavassist/bytecode/AttributeInfo;->copyAll(Ljava/util/List;Ljavassist/bytecode/ConstPool;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    .line 248
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 249
    return-void
.end method

.method public getAccessFlags()I
    .locals 1

    .line 340
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 745
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/AttributeInfo;

    .line 746
    .local v1, "ai":Ljavassist/bytecode/AttributeInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 747
    return-object v1

    .line 746
    .end local v1    # "ai":Ljavassist/bytecode/AttributeInfo;
    :cond_0
    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x0

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

    .line 728
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getConstPool()Ljavassist/bytecode/ConstPool;
    .locals 1

    .line 310
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getInnerAccessFlags()I
    .locals 6

    .line 364
    nop

    .line 365
    const-string v0, "InnerClasses"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/InnerClassesAttribute;

    .line 366
    .local v0, "ica":Ljavassist/bytecode/InnerClassesAttribute;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljavassist/bytecode/InnerClassesAttribute;->tableLength()I

    move-result v3

    .line 371
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 372
    invoke-virtual {v0, v4}, Ljavassist/bytecode/InnerClassesAttribute;->innerClass(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    invoke-virtual {v0, v4}, Ljavassist/bytecode/InnerClassesAttribute;->accessFlags(I)I

    move-result v1

    return v1

    .line 371
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    .end local v4    # "i":I
    :cond_2
    return v1
.end method

.method public getInterfaces()[Ljava/lang/String;
    .locals 5

    .line 530
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 531
    return-object v0

    .line 533
    :cond_0
    const/4 v0, 0x0

    .line 534
    .local v0, "rtn":[Ljava/lang/String;
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-nez v1, :cond_1

    .line 535
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    goto :goto_1

    .line 537
    :cond_1
    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    .line 538
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 539
    iget-object v4, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget v3, v3, v2

    invoke-virtual {v4, v3}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v2    # "i":I
    :cond_2
    move-object v0, v1

    .line 544
    .end local v1    # "list":[Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 545
    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 871
    iget v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    return v0
.end method

.method public getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    .line 639
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    return-object v1

    .line 639
    .end local v1    # "minfo":Ljavassist/bytecode/MethodInfo;
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 890
    iget v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefClasses(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 509
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 511
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 512
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    .line 513
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "desc":Ljava/lang/String;
    invoke-static {v2, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 515
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 516
    .end local v1    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v2    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 519
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 520
    .restart local v2    # "desc":Ljava/lang/String;
    invoke-static {v2, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 521
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1}, Ljavassist/bytecode/AttributeInfo;->getRefClasses(Ljava/util/List;Ljava/util/Map;)V

    .line 522
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v2    # "desc":Ljava/lang/String;
    goto :goto_1

    .line 523
    :cond_1
    return-void
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 2

    .line 779
    nop

    .line 780
    const-string v0, "SourceFile"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/SourceFileAttribute;

    .line 781
    .local v0, "sf":Ljavassist/bytecode/SourceFileAttribute;
    if-nez v0, :cond_0

    .line 782
    const/4 v1, 0x0

    return-object v1

    .line 783
    :cond_0
    invoke-virtual {v0}, Ljavassist/bytecode/SourceFileAttribute;->getFileName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStaticInitializer()Ljavassist/bytecode/MethodInfo;
    .locals 1

    .line 649
    const-string v0, "<clinit>"

    invoke-virtual {p0, v0}, Ljavassist/bytecode/ClassFile;->getMethod(Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuperclass()Ljava/lang/String;
    .locals 2

    .line 397
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    iget v1, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ConstPool;->getClassInfo(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 400
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassId()I
    .locals 1

    .line 408
    iget v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 331
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 324
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 317
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prune()V
    .locals 7

    .line 273
    invoke-direct {p0}, Ljavassist/bytecode/ClassFile;->compact0()Ljavassist/bytecode/ConstPool;

    move-result-object v0

    .line 274
    .local v0, "cp":Ljavassist/bytecode/ConstPool;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v1, "newAttributes":Ljava/util/List;, "Ljava/util/List<Ljavassist/bytecode/AttributeInfo;>;"
    nop

    .line 276
    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {p0, v2}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    .line 277
    .local v2, "invisibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    .line 279
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    nop

    .line 283
    const-string v4, "RuntimeVisibleAnnotations"

    invoke-virtual {p0, v4}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 284
    .local v4, "visibleAnnotations":Ljavassist/bytecode/AttributeInfo;
    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v4, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v4

    .line 286
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    nop

    .line 290
    const-string v5, "Signature"

    invoke-virtual {p0, v5}, Ljavassist/bytecode/ClassFile;->getAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    .line 291
    .local v5, "signature":Ljavassist/bytecode/AttributeInfo;
    if-eqz v5, :cond_2

    .line 292
    invoke-virtual {v5, v0, v3}, Ljavassist/bytecode/AttributeInfo;->copy(Ljavassist/bytecode/ConstPool;Ljava/util/Map;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v5

    .line 293
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/MethodInfo;

    .line 297
    .local v6, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v6, v0}, Ljavassist/bytecode/MethodInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    .end local v6    # "minfo":Ljavassist/bytecode/MethodInfo;
    goto :goto_0

    .line 299
    :cond_3
    iget-object v3, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavassist/bytecode/FieldInfo;

    .line 300
    .local v6, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v6, v0}, Ljavassist/bytecode/FieldInfo;->prune(Ljavassist/bytecode/ConstPool;)V

    .end local v6    # "finfo":Ljavassist/bytecode/FieldInfo;
    goto :goto_1

    .line 302
    :cond_4
    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    .line 303
    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    .line 304
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 759
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v0, p1}, Ljavassist/bytecode/AttributeInfo;->remove(Ljava/util/List;Ljava/lang/String;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final renameClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldname"    # Ljava/lang/String;
    .param p2, "newname"    # Ljava/lang/String;

    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iput-object p2, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 455
    :cond_1
    invoke-static {p1}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-static {p2}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 457
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1, p2}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    .line 461
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "desc":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v1    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v2    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/FieldInfo;

    .line 467
    .local v1, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 468
    .restart local v2    # "desc":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, p1, p2}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .end local v1    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v2    # "desc":Ljava/lang/String;
    goto :goto_1

    .line 471
    :cond_3
    return-void
.end method

.method public final renameClass(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 483
    .local p1, "classnames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 484
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJvmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, "jvmNewThisName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 486
    invoke-static {v0}, Ljavassist/bytecode/Descriptor;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    .line 488
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v1, p1}, Ljavassist/bytecode/ConstPool;->renameClass(Ljava/util/Map;)V

    .line 490
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v1, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 491
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/MethodInfo;

    .line 492
    .local v2, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "desc":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavassist/bytecode/MethodInfo;->setDescriptor(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v2}, Ljavassist/bytecode/MethodInfo;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 495
    .end local v2    # "minfo":Ljavassist/bytecode/MethodInfo;
    .end local v3    # "desc":Ljava/lang/String;
    goto :goto_0

    .line 497
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/FieldInfo;

    .line 498
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2}, Ljavassist/bytecode/FieldInfo;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 499
    .restart local v3    # "desc":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavassist/bytecode/Descriptor;->rename(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavassist/bytecode/FieldInfo;->setDescriptor(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v2}, Ljavassist/bytecode/FieldInfo;->getAttributes()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, p1}, Ljavassist/bytecode/AttributeInfo;->renameClass(Ljava/util/List;Ljava/util/Map;)V

    .line 501
    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    .end local v3    # "desc":Ljava/lang/String;
    goto :goto_1

    .line 502
    :cond_2
    return-void
.end method

.method public setAccessFlags(I)V
    .locals 1
    .param p1, "acc"    # I

    .line 349
    and-int/lit16 v0, p1, 0x200

    if-nez v0, :cond_0

    .line 350
    or-int/lit8 p1, p1, 0x20

    .line 352
    :cond_0
    iput p1, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    .line 353
    return-void
.end method

.method public setInterfaces([Ljava/lang/String;)V
    .locals 4
    .param p1, "nameList"    # [Ljava/lang/String;

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->cachedInterfaces:[Ljava/lang/String;

    .line 556
    if-eqz p1, :cond_0

    .line 557
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v1, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setMajorVersion(I)V
    .locals 0
    .param p1, "major"    # I

    .line 881
    iput p1, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 882
    return-void
.end method

.method public setMinorVersion(I)V
    .locals 0
    .param p1, "minor"    # I

    .line 900
    iput p1, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 901
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->thisclassname:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljavassist/bytecode/ClassFile;->renameClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setSuperclass(Ljava/lang/String;)V
    .locals 2
    .param p1, "superclass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 420
    if-nez p1, :cond_0

    .line 421
    const-string p1, "java.lang.Object"

    .line 424
    :cond_0
    :try_start_0
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    .line 425
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/bytecode/MethodInfo;

    .line 426
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1, p1}, Ljavassist/bytecode/MethodInfo;->setSuperclass(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavassist/bytecode/BadBytecode; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "minfo":Ljavassist/bytecode/MethodInfo;
    goto :goto_0

    .line 430
    :cond_1
    nop

    .line 431
    iput-object p1, p0, Ljavassist/bytecode/ClassFile;->cachedSuperclass:Ljava/lang/String;

    .line 432
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljavassist/bytecode/BadBytecode;
    new-instance v1, Ljavassist/CannotCompileException;

    invoke-direct {v1, v0}, Ljavassist/CannotCompileException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVersionToJava5()V
    .locals 1

    .line 911
    const/16 v0, 0x31

    iput v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    .line 912
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    .line 913
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 834
    iget v0, p0, Ljavassist/bytecode/ClassFile;->minor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 835
    iget v0, p0, Ljavassist/bytecode/ClassFile;->major:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 836
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->constPool:Ljavassist/bytecode/ConstPool;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/ConstPool;->write(Ljava/io/DataOutputStream;)V

    .line 837
    iget v0, p0, Ljavassist/bytecode/ClassFile;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 838
    iget v0, p0, Ljavassist/bytecode/ClassFile;->thisClass:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 839
    iget v0, p0, Ljavassist/bytecode/ClassFile;->superClass:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 841
    iget-object v0, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    if-nez v0, :cond_0

    .line 842
    const/4 v0, 0x0

    .local v0, "n":I
    goto :goto_0

    .line 844
    .end local v0    # "n":I
    :cond_0
    array-length v0, v0

    .line 846
    .restart local v0    # "n":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 848
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->interfaces:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    :cond_1
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 851
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 852
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 853
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/bytecode/FieldInfo;

    .line 854
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2, p1}, Ljavassist/bytecode/FieldInfo;->write(Ljava/io/DataOutputStream;)V

    .line 852
    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 857
    :cond_2
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 858
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->methods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/bytecode/MethodInfo;

    .line 859
    .local v3, "minfo":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v3, p1}, Ljavassist/bytecode/MethodInfo;->write(Ljava/io/DataOutputStream;)V

    .end local v3    # "minfo":Ljavassist/bytecode/MethodInfo;
    goto :goto_3

    .line 861
    :cond_3
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 862
    iget-object v2, p0, Ljavassist/bytecode/ClassFile;->attributes:Ljava/util/List;

    invoke-static {v2, p1}, Ljavassist/bytecode/AttributeInfo;->writeAll(Ljava/util/List;Ljava/io/DataOutputStream;)V

    .line 863
    return-void
.end method
