.class public Ljavassist/util/proxy/ProxyFactory;
.super Ljava/lang/Object;
.source "ProxyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;,
        Ljavassist/util/proxy/ProxyFactory$UniqueName;,
        Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;,
        Ljavassist/util/proxy/ProxyFactory$ProxyDetails;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERCEPTOR:Ljava/lang/String; = "default_interceptor"

.field private static final FILTER_SIGNATURE_FIELD:Ljava/lang/String; = "_filter_signature"

.field private static final FILTER_SIGNATURE_TYPE:Ljava/lang/String; = "[B"

.field private static final HANDLER:Ljava/lang/String; = "handler"

.field private static final HANDLER_GETTER:Ljava/lang/String; = "getHandler"

.field private static final HANDLER_GETTER_KEY:Ljava/lang/String; = "getHandler:()"

.field private static final HANDLER_GETTER_TYPE:Ljava/lang/String;

.field private static final HANDLER_SETTER:Ljava/lang/String; = "setHandler"

.field private static final HANDLER_SETTER_TYPE:Ljava/lang/String;

.field private static final HANDLER_TYPE:Ljava/lang/String;

.field private static final HOLDER:Ljava/lang/String; = "_methods_"

.field private static final HOLDER_TYPE:Ljava/lang/String; = "[Ljava/lang/reflect/Method;"

.field private static final NULL_INTERCEPTOR_HOLDER:Ljava/lang/String; = "javassist.util.proxy.RuntimeSupport"

.field private static final OBJECT_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final SERIAL_VERSION_UID_FIELD:Ljava/lang/String; = "serialVersionUID"

.field private static final SERIAL_VERSION_UID_TYPE:Ljava/lang/String; = "J"

.field private static final SERIAL_VERSION_UID_VALUE:J = -0x1L

.field public static classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider; = null

.field private static hexDigits:[C = null

.field public static nameGenerator:Ljavassist/util/proxy/ProxyFactory$UniqueName; = null

.field public static onlyPublicMethods:Z = false

.field private static final packageForJavaBase:Ljava/lang/String; = "javassist.util.proxy."

.field private static proxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/util/proxy/ProxyFactory$ProxyDetails;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static volatile useCache:Z

.field public static volatile useWriteReplace:Z


# instance fields
.field private basename:Ljava/lang/String;

.field private classname:Ljava/lang/String;

.field private factoryUseCache:Z

.field private factoryWriteReplace:Z

.field private genericSignature:Ljava/lang/String;

.field private handler:Ljavassist/util/proxy/MethodHandler;

.field private hasGetHandler:Z

.field private interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private methodFilter:Ljavassist/util/proxy/MethodFilter;

.field private signature:[B

.field private signatureMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private superClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private superName:Ljava/lang/String;

.field private thisClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public writeDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 223
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/util/proxy/ProxyFactory;->onlyPublicMethods:Z

    .line 236
    const-class v0, Ljava/lang/Object;

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->OBJECT_TYPE:Ljava/lang/Class;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Ljavassist/util/proxy/MethodHandler;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_SETTER_TYPE:Ljava/lang/String;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->HANDLER_GETTER_TYPE:Ljava/lang/String;

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useCache:Z

    .line 289
    sput-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useWriteReplace:Z

    .line 338
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/Map;

    .line 573
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    .line 757
    new-instance v0, Ljavassist/util/proxy/ProxyFactory$1;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory$1;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;

    .line 876
    new-instance v0, Ljavassist/util/proxy/ProxyFactory$2;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory$2;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->nameGenerator:Ljavassist/util/proxy/ProxyFactory$UniqueName;

    .line 979
    new-instance v0, Ljavassist/util/proxy/ProxyFactory$3;

    invoke-direct {v0}, Ljavassist/util/proxy/ProxyFactory$3;-><init>()V

    sput-object v0, Ljavassist/util/proxy/ProxyFactory;->sorter:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .line 388
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    .line 389
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    .line 390
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    .line 391
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 392
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    .line 393
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    .line 394
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 395
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->genericSignature:Ljava/lang/String;

    .line 396
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->writeDirectory:Ljava/lang/String;

    .line 397
    sget-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useCache:Z

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    .line 398
    sget-boolean v0, Ljavassist/util/proxy/ProxyFactory;->useWriteReplace:Z

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    .line 399
    return-void
.end method

.method private static addClassInitializer(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;ILjava/util/List;)V
    .locals 21
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "classname"    # Ljava/lang/String;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1067
    .local p4, "forwarders":Ljava/util/List;, "Ljava/util/List<Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljavassist/bytecode/FieldInfo;

    const-string v4, "_methods_"

    const-string v5, "[Ljava/lang/reflect/Method;"

    invoke-direct {v3, v1, v4, v5}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    .local v3, "finfo":Ljavassist/bytecode/FieldInfo;
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 1069
    invoke-virtual {v0, v3}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 1070
    new-instance v6, Ljavassist/bytecode/MethodInfo;

    const-string v7, "<clinit>"

    const-string v8, "()V"

    invoke-direct {v6, v1, v7, v8}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .local v6, "minfo":Ljavassist/bytecode/MethodInfo;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1072
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/ClassNotFoundException;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v6, v1, v8}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V

    .line 1074
    new-instance v8, Ljavassist/bytecode/Bytecode;

    const/4 v9, 0x2

    invoke-direct {v8, v1, v10, v9}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1075
    .local v8, "code":Ljavassist/bytecode/Bytecode;
    mul-int/lit8 v9, p3, 0x2

    invoke-virtual {v8, v9}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1076
    const-string v9, "java.lang.reflect.Method"

    invoke-virtual {v8, v9}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 1077
    const/4 v9, 0x0

    .line 1078
    .local v9, "varArray":I
    invoke-virtual {v8, v10}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1082
    invoke-virtual {v8, v2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1083
    const-string v11, "java.lang.Class"

    const-string v12, "forName"

    const-string v13, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {v8, v11, v12, v13}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/16 v18, 0x1

    .line 1086
    .local v18, "varClass":I
    invoke-virtual {v8, v7}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1088
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;

    .line 1089
    .local v15, "args":Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;
    iget-object v12, v15, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;->methodName:Ljava/lang/String;

    iget-object v13, v15, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;->delegatorName:Ljava/lang/String;

    iget v14, v15, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;->origIndex:I

    iget-object v11, v15, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;->descriptor:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v19, v11

    move-object v11, v8

    move-object/from16 v20, v15

    .end local v15    # "args":Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;
    .local v20, "args":Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;
    move-object/from16 v15, v19

    invoke-static/range {v11 .. v17}, Ljavassist/util/proxy/ProxyFactory;->callFind2Methods(Ljavassist/bytecode/Bytecode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .end local v20    # "args":Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;
    goto :goto_0

    .line 1092
    :cond_0
    invoke-virtual {v8, v10}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1093
    invoke-virtual {v8, v2, v4, v5}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-wide/16 v4, -0x1

    invoke-virtual {v8, v4, v5}, Ljavassist/bytecode/Bytecode;->addLconst(J)V

    .line 1096
    const-string v4, "serialVersionUID"

    const-string v5, "J"

    invoke-virtual {v8, v2, v4, v5}, Ljavassist/bytecode/Bytecode;->addPutstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/16 v4, 0xb1

    invoke-virtual {v8, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1098
    invoke-virtual {v8}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1099
    invoke-virtual {v0, v6}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1100
    return-void
.end method

.method private static addGetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1142
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_GETTER_TYPE:Ljava/lang/String;

    const-string v2, "getHandler"

    invoke-direct {v0, p2, v2, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .local v0, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1145
    new-instance v2, Ljavassist/bytecode/Bytecode;

    invoke-direct {v2, p2, v1, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v1, v2

    .line 1146
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1147
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v3, "handler"

    invoke-virtual {v1, p0, v3, v2}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1149
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1150
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1151
    return-void
.end method

.method private static addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I
    .locals 2
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "I",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1535
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1536
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_0

    .line 1537
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLload(I)V

    .line 1538
    return v1

    .line 1540
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_1

    .line 1541
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addFload(I)V

    goto :goto_0

    .line 1542
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_2

    .line 1543
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addDload(I)V

    .line 1544
    return v1

    .line 1547
    :cond_2
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addIload(I)V

    goto :goto_0

    .line 1550
    :cond_3
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1552
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I
    .locals 5
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1526
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1527
    .local v0, "stacksize":I
    array-length v1, p1

    .line 1528
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1529
    add-int v3, v0, p2

    aget-object v4, p1, v2

    invoke-static {p0, v3, v4}, Ljavassist/util/proxy/ProxyFactory;->addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1528
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1531
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method private static addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I
    .locals 2
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1556
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1557
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    if-ne p1, v0, :cond_0

    .line 1558
    const/16 v0, 0xad

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1559
    return v1

    .line 1561
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 1562
    const/16 v0, 0xae

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1563
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 1564
    const/16 v0, 0xaf

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1565
    return v1

    .line 1567
    :cond_2
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 1568
    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1569
    const/4 v0, 0x0

    return v0

    .line 1572
    :cond_3
    const/16 v0, 0xac

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1575
    :cond_4
    const/16 v0, 0xb0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1577
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static addSetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1127
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_SETTER_TYPE:Ljava/lang/String;

    const-string v2, "setHandler"

    invoke-direct {v0, p2, v2, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    .local v0, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1130
    new-instance v2, Ljavassist/bytecode/Bytecode;

    const/4 v3, 0x2

    invoke-direct {v2, p2, v3, v3}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1131
    .local v2, "code":Ljavassist/bytecode/Bytecode;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1132
    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1133
    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v3, "handler"

    invoke-virtual {v2, p0, v3, v1}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/16 v1, 0xb1

    invoke-virtual {v2, v1}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1135
    invoke-virtual {v2}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1136
    invoke-virtual {p1, v0}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1137
    return-void
.end method

.method private static addUnwrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)V
    .locals 4
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1612
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 1614
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1616
    :cond_0
    invoke-static {p1}, Ljavassist/util/proxy/FactoryHelper;->typeIndex(Ljava/lang/Class;)I

    move-result v0

    .line 1617
    .local v0, "index":I
    sget-object v1, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1618
    .local v1, "wrapper":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 1619
    sget-object v2, Ljavassist/util/proxy/FactoryHelper;->unwarpMethods:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Ljavassist/util/proxy/FactoryHelper;->unwrapDesc:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Ljavassist/bytecode/Bytecode;->addInvokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    .end local v0    # "index":I
    .end local v1    # "wrapper":Ljava/lang/String;
    goto :goto_0

    .line 1625
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addCheckcast(Ljava/lang/String;)V

    .line 1626
    :goto_0
    return-void
.end method

.method private allocateClassName()V
    .locals 1

    .line 976
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->makeProxyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    .line 977
    return-void
.end method

.method private static areParametersSame(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "targetMethod"    # Ljava/lang/reflect/Method;

    .line 1334
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1335
    .local v0, "methodTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1336
    .local v1, "targetMethodTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v0

    array-length v3, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 1337
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1338
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1339
    nop

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    :cond_0
    return v4

    .line 1344
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1346
    :cond_2
    return v4
.end method

.method private static callFind2Methods(Ljavassist/bytecode/Bytecode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p1, "superMethod"    # Ljava/lang/String;
    .param p2, "thisMethod"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "classVar"    # I
    .param p6, "arrayVar"    # I

    .line 1107
    const-class v0, Ljavassist/util/proxy/RuntimeSupport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "findClass":Ljava/lang/String;
    const-string v1, "(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/reflect/Method;)V"

    .line 1111
    .local v1, "findDesc":Ljava/lang/String;
    invoke-virtual {p0, p5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1112
    invoke-virtual {p0, p1}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1113
    if-nez p2, :cond_0

    .line 1114
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    goto :goto_0

    .line 1116
    :cond_0
    invoke-virtual {p0, p2}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1118
    :goto_0
    invoke-virtual {p0, p3}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1119
    invoke-virtual {p0, p4}, Ljavassist/bytecode/Bytecode;->addLdc(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0, p6}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1121
    const-string v2, "find2Methods"

    invoke-virtual {p0, v0, v2, v1}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method private checkClassAndSuperName()V
    .locals 4

    .line 950
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 951
    new-array v0, v1, [Ljava/lang/Class;

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    .line 953
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 954
    sget-object v0, Ljavassist/util/proxy/ProxyFactory;->OBJECT_TYPE:Ljava/lang/Class;

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .line 955
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    .line 956
    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 957
    :cond_1
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    goto :goto_1

    .line 959
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    .line 960
    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    .line 963
    :goto_1
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 969
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    const-string v1, "jdk."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Ljavassist/util/proxy/ProxyFactory;->onlyPublicMethods:Z

    if-eqz v0, :cond_4

    .line 970
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javassist.util.proxy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    .line 971
    :cond_4
    return-void

    .line 964
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is final"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeSignature(Ljavassist/util/proxy/MethodFilter;)V
    .locals 6
    .param p1, "filter"    # Ljavassist/util/proxy/MethodFilter;

    .line 998
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->makeSortedMethodList()V

    .line 1000
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1001
    .local v0, "l":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 1002
    .local v1, "maxBytes":I
    new-array v2, v1, [B

    iput-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 1003
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1005
    iget-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 1006
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 1007
    .local v4, "mod":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    .line 1008
    invoke-static {v4, v5, v3}, Ljavassist/util/proxy/ProxyFactory;->isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Ljavassist/util/proxy/MethodFilter;->isHandled(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1009
    :cond_0
    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, v5, v2}, Ljavassist/util/proxy/ProxyFactory;->setBit([BI)V

    .line 1003
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "mod":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    .end local v2    # "idx":I
    :cond_2
    return-void
.end method

.method private createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .locals 4
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 555
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 556
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 557
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 558
    .local v1, "cl":Ljava/lang/ClassLoader;
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/Map;

    monitor-enter v2

    .line 559
    :try_start_0
    iget-boolean v3, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-eqz v3, :cond_0

    .line 560
    invoke-direct {p0, v1, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass2(Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-direct {p0, v1, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass3(Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;)V

    .line 564
    :goto_0
    iget-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    move-object v0, v3

    .line 566
    const/4 v3, 0x0

    iput-object v3, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 567
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 570
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_1
    return-object v0
.end method

.method private createClass2(Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;)V
    .locals 7
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 603
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    iget-boolean v3, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavassist/util/proxy/ProxyFactory;->getKey(Ljava/lang/Class;[Ljava/lang/Class;[BZ)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 612
    .local v1, "cacheForTheLoader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/util/proxy/ProxyFactory$ProxyDetails;>;"
    if-nez v1, :cond_0

    .line 613
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 614
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->proxyCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;

    .line 617
    .local v2, "details":Ljavassist/util/proxy/ProxyFactory$ProxyDetails;
    if-eqz v2, :cond_1

    .line 618
    iget-object v3, v2, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;->proxyClass:Ljava/lang/ref/Reference;

    .line 619
    .local v3, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iput-object v4, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 620
    if-eqz v4, :cond_1

    .line 621
    return-void

    .line 624
    .end local v3    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/lang/Class<*>;>;"
    :cond_1
    invoke-direct {p0, p1, p2}, Ljavassist/util/proxy/ProxyFactory;->createClass3(Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;)V

    .line 625
    new-instance v3, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;

    iget-object v4, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    iget-boolean v6, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    invoke-direct {v3, v4, v5, v6}, Ljavassist/util/proxy/ProxyFactory$ProxyDetails;-><init>([BLjava/lang/Class;Z)V

    move-object v2, v3

    .line 626
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    return-void
.end method

.method private createClass3(Ljava/lang/ClassLoader;Ljava/lang/invoke/MethodHandles$Lookup;)V
    .locals 3
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;

    .line 632
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->allocateClassName()V

    .line 635
    :try_start_0
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->make()Ljavassist/bytecode/ClassFile;

    move-result-object v0

    .line 636
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->writeDirectory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 637
    invoke-static {v0, v1}, Ljavassist/util/proxy/FactoryHelper;->writeFile(Ljavassist/bytecode/ClassFile;Ljava/lang/String;)V

    .line 639
    :cond_0
    if-nez p2, :cond_1

    .line 640
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->getClassInTheSamePackage()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->getDomain()Ljava/security/ProtectionDomain;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    goto :goto_0

    .line 642
    :cond_1
    invoke-static {v0, p2}, Ljavassist/util/proxy/FactoryHelper;->toClass(Ljavassist/bytecode/ClassFile;Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 644
    :goto_0
    const-string v1, "_filter_signature"

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 646
    iget-boolean v1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-nez v1, :cond_2

    .line 647
    const-string v1, "default_interceptor"

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    invoke-direct {p0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavassist/CannotCompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v0    # "cf":Ljavassist/bytecode/ClassFile;
    :cond_2
    nop

    .line 654
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljavassist/CannotCompileException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavassist/CannotCompileException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getClassInTheSamePackage()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    const-string v1, "javassist.util.proxy."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 664
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->OBJECT_TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 665
    return-object v0

    .line 666
    :cond_1
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 667
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 669
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 691
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 692
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 693
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 694
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    return-object v1

    .line 697
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getFilterSignature(Ljava/lang/Class;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .line 686
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "_filter_signature"

    invoke-static {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static getHandler(Ljavassist/util/proxy/Proxy;)Ljavassist/util/proxy/MethodHandler;
    .locals 3
    .param p0, "p"    # Ljavassist/util/proxy/Proxy;

    .line 711
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "handler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 712
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 713
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 714
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 715
    move-object v2, v1

    check-cast v2, Ljavassist/util/proxy/MethodHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 717
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getMethods(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1266
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1267
    .local v0, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1268
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 1269
    aget-object v3, p2, v2

    invoke-direct {p0, v0, v3, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)V

    .line 1268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1271
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p1, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)V

    .line 1272
    return-object v0
.end method

.method private getMethods(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 1278
    .local p1, "hash":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "visitedClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1279
    return-void

    .line 1281
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 1282
    .local v0, "ifs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1283
    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2, p3}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)V

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1286
    .local v1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 1287
    invoke-direct {p0, p1, v1, p3}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)V

    .line 1294
    :cond_2
    invoke-static {p2}, Ljavassist/util/proxy/SecurityActions;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1295
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 1296
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1297
    aget-object v4, v2, v3

    .line 1298
    .local v4, "m":Ljava/lang/reflect/Method;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1299
    .local v5, "key":Ljava/lang/String;
    const-string v6, "getHandler:()"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1300
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    .line 1304
    :cond_3
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 1308
    .local v6, "oldMethod":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_4

    invoke-static {v4}, Ljavassist/util/proxy/ProxyFactory;->isBridge(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1309
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1310
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v3, v2}, Ljavassist/util/proxy/ProxyFactory;->isDuplicated(I[Ljava/lang/reflect/Method;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1311
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1315
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1318
    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "oldMethod":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1321
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1257
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1258
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    return-object v1

    .line 1260
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private installSignature([B)V
    .locals 4
    .param p1, "signature"    # [B

    .line 1016
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->makeSortedMethodList()V

    .line 1018
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1019
    .local v0, "l":I
    add-int/lit8 v1, v0, 0x7

    shr-int/lit8 v1, v1, 0x3

    .line 1020
    .local v1, "maxBytes":I
    array-length v2, p1

    if-ne v2, v1, :cond_0

    .line 1024
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 1025
    return-void

    .line 1021
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid filter signature length for deserialized proxy class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private invokespecialTarget(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1425
    .local p1, "declClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1426
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1427
    .local v3, "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1428
    return-object v3

    .line 1426
    .end local v3    # "i":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1430
    :cond_1
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method private static isBridge(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "m"    # Ljava/lang/reflect/Method;

    .line 1174
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    return v0
.end method

.method private static isDuplicated(I[Ljava/lang/reflect/Method;)Z
    .locals 4
    .param p0, "index"    # I
    .param p1, "methods"    # [Ljava/lang/reflect/Method;

    .line 1324
    aget-object v0, p1, p0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1325
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1326
    if-eq v1, p0, :cond_0

    .line 1327
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, p0

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Ljavassist/util/proxy/ProxyFactory;->areParametersSame(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1328
    const/4 v2, 0x1

    return v2

    .line 1325
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 349
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljavassist/util/proxy/Proxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z
    .locals 4
    .param p0, "mod"    # I
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "meth"    # Ljava/lang/reflect/Member;

    .line 1243
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1244
    return v1

    .line 1245
    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1246
    return v2

    .line 1248
    :cond_1
    invoke-static {p1}, Ljavassist/util/proxy/ProxyFactory;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    .local v0, "p":Ljava/lang/String;
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavassist/util/proxy/ProxyFactory;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1250
    .local v3, "q":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 1251
    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1252
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static keyToDesc(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 1353
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private make()Ljavassist/bytecode/ClassFile;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 893
    new-instance v0, Ljavassist/bytecode/ClassFile;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    iget-object v2, p0, Ljavassist/util/proxy/ProxyFactory;->superName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljavassist/bytecode/ClassFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 894
    .local v0, "cf":Ljavassist/bytecode/ClassFile;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->setAccessFlags(I)V

    .line 895
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    if-eqz v2, :cond_0

    const-class v2, Ljavassist/util/proxy/Proxy;

    goto :goto_0

    :cond_0
    const-class v2, Ljavassist/util/proxy/ProxyObject;

    :goto_0
    invoke-static {v0, v1, v2}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces(Ljavassist/bytecode/ClassFile;[Ljava/lang/Class;Ljava/lang/Class;)V

    .line 896
    invoke-virtual {v0}, Ljavassist/bytecode/ClassFile;->getConstPool()Ljavassist/bytecode/ConstPool;

    move-result-object v1

    .line 899
    .local v1, "pool":Ljavassist/bytecode/ConstPool;
    iget-boolean v2, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    const/16 v3, 0x9

    if-nez v2, :cond_1

    .line 900
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    sget-object v4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v5, "default_interceptor"

    invoke-direct {v2, v1, v5, v4}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .local v2, "finfo":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v2, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 902
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 906
    .end local v2    # "finfo":Ljavassist/bytecode/FieldInfo;
    :cond_1
    new-instance v2, Ljavassist/bytecode/FieldInfo;

    sget-object v4, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v5, "handler"

    invoke-direct {v2, v1, v5, v4}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v2, "finfo2":Ljavassist/bytecode/FieldInfo;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 908
    invoke-virtual {v0, v2}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 911
    new-instance v4, Ljavassist/bytecode/FieldInfo;

    const-string v5, "_filter_signature"

    const-string v6, "[B"

    invoke-direct {v4, v1, v5, v6}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .local v4, "finfo3":Ljavassist/bytecode/FieldInfo;
    invoke-virtual {v4, v3}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 913
    invoke-virtual {v0, v4}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 916
    new-instance v3, Ljavassist/bytecode/FieldInfo;

    const-string v5, "serialVersionUID"

    const-string v6, "J"

    invoke-direct {v3, v1, v5, v6}, Ljavassist/bytecode/FieldInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .local v3, "finfo4":Ljavassist/bytecode/FieldInfo;
    const/16 v5, 0x19

    invoke-virtual {v3, v5}, Ljavassist/bytecode/FieldInfo;->setAccessFlags(I)V

    .line 918
    invoke-virtual {v0, v3}, Ljavassist/bytecode/ClassFile;->addField(Ljavassist/bytecode/FieldInfo;)V

    .line 920
    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->genericSignature:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 921
    new-instance v6, Ljavassist/bytecode/SignatureAttribute;

    invoke-direct {v6, v1, v5}, Ljavassist/bytecode/SignatureAttribute;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    move-object v5, v6

    .line 922
    .local v5, "sa":Ljavassist/bytecode/SignatureAttribute;
    invoke-virtual {v0, v5}, Ljavassist/bytecode/ClassFile;->addAttribute(Ljavassist/bytecode/AttributeInfo;)V

    .line 927
    .end local v5    # "sa":Ljavassist/bytecode/SignatureAttribute;
    :cond_2
    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-direct {p0, v5, v0, v1, v5}, Ljavassist/util/proxy/ProxyFactory;->makeConstructors(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V

    .line 929
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v5, "forwarders":Ljava/util/List;, "Ljava/util/List<Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;>;"
    iget-object v6, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v6, v5}, Ljavassist/util/proxy/ProxyFactory;->overrideMethods(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/util/List;)I

    move-result v6

    .line 931
    .local v6, "s":I
    iget-object v7, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v0, v1, v7, v6, v5}, Ljavassist/util/proxy/ProxyFactory;->addClassInitializer(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;ILjava/util/List;)V

    .line 932
    iget-object v7, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Ljavassist/util/proxy/ProxyFactory;->addSetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V

    .line 933
    iget-boolean v7, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    if-nez v7, :cond_3

    .line 934
    iget-object v7, p0, Ljavassist/util/proxy/ProxyFactory;->classname:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Ljavassist/util/proxy/ProxyFactory;->addGetter(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;)V

    .line 936
    :cond_3
    iget-boolean v7, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    if-eqz v7, :cond_4

    .line 938
    :try_start_0
    invoke-static {v1}, Ljavassist/util/proxy/ProxyFactory;->makeWriteReplace(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/MethodInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V
    :try_end_0
    .catch Ljavassist/bytecode/DuplicateMemberException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    goto :goto_1

    .line 940
    :catch_0
    move-exception v7

    .line 945
    :cond_4
    :goto_1
    const/4 v7, 0x0

    iput-object v7, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 946
    return-object v0
.end method

.method private static makeConstructor(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Z)Ljavassist/bytecode/MethodInfo;
    .locals 10
    .param p0, "thisClassName"    # Ljava/lang/String;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p4, "doHandlerInit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljavassist/bytecode/MethodInfo;"
        }
    .end annotation

    .line 1358
    .local p1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljavassist/util/proxy/RuntimeSupport;->makeDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "desc":Ljava/lang/String;
    new-instance v1, Ljavassist/bytecode/MethodInfo;

    const-string v2, "<init>"

    invoke-direct {v1, p2, v2, v0}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    .local v1, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1362
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v1, p2, v4}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V

    .line 1363
    new-instance v4, Ljavassist/bytecode/Bytecode;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5, v5}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1368
    .local v4, "code":Ljavassist/bytecode/Bytecode;
    const-string v6, "handler"

    const-string v7, "default_interceptor"

    if-eqz p4, :cond_0

    .line 1369
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1370
    sget-object v8, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    invoke-virtual {v4, p0, v7, v8}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v4, p0, v6, v8}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v4, p0, v7, v8}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/16 v8, 0xc7

    invoke-virtual {v4, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1374
    const/16 v8, 0xa

    invoke-virtual {v4, v8}, Ljavassist/bytecode/Bytecode;->addIndex(I)V

    .line 1378
    :cond_0
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1379
    sget-object v8, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v9, "javassist.util.proxy.RuntimeSupport"

    invoke-virtual {v4, v9, v7, v8}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v4, p0, v6, v8}, Ljavassist/bytecode/Bytecode;->addPutfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->currentPc()I

    move-result v6

    .line 1383
    .local v6, "pc":I
    invoke-virtual {v4, v5}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1384
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5, v3}, Ljavassist/util/proxy/ProxyFactory;->addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I

    move-result v3

    .line 1385
    .local v3, "s":I
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v0}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/16 v2, 0xb1

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1387
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1388
    invoke-virtual {v4}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v2

    .line 1389
    .local v2, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v1, v2}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1391
    new-instance v5, Ljavassist/bytecode/StackMapTable$Writer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljavassist/bytecode/StackMapTable$Writer;-><init>(I)V

    .line 1392
    .local v5, "writer":Ljavassist/bytecode/StackMapTable$Writer;
    invoke-virtual {v5, v6}, Ljavassist/bytecode/StackMapTable$Writer;->sameFrame(I)V

    .line 1393
    invoke-virtual {v5, p2}, Ljavassist/bytecode/StackMapTable$Writer;->toStackMapTable(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/StackMapTable;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavassist/bytecode/CodeAttribute;->setAttribute(Ljavassist/bytecode/StackMapTable;)V

    .line 1394
    return-object v1
.end method

.method private makeConstructors(Ljava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;)V
    .locals 6
    .param p1, "thisClassName"    # Ljava/lang/String;
    .param p2, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p3, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p4, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-static {v0}, Ljavassist/util/proxy/SecurityActions;->getDeclaredConstructors(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1205
    .local v0, "cons":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    iget-boolean v1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1206
    .local v1, "doHandlerInit":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1207
    aget-object v3, v0, v2

    .line 1208
    .local v3, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    .line 1209
    .local v4, "mod":I
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->basename:Ljava/lang/String;

    .line 1210
    invoke-static {v4, v5, v3}, Ljavassist/util/proxy/ProxyFactory;->isVisible(ILjava/lang/String;Ljava/lang/reflect/Member;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1211
    iget-object v5, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-static {p1, v3, p3, v5, v1}, Ljavassist/util/proxy/ProxyFactory;->makeConstructor(Ljava/lang/String;Ljava/lang/reflect/Constructor;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Z)Ljavassist/bytecode/MethodInfo;

    move-result-object v5

    .line 1212
    .local v5, "m":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {p2, v5}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1206
    .end local v3    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "mod":I
    .end local v5    # "m":Ljavassist/bytecode/MethodInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1215
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private makeDelegator(Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;
    .locals 8
    .param p1, "meth"    # Ljava/lang/reflect/Method;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p5, "delegatorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljavassist/bytecode/MethodInfo;"
        }
    .end annotation

    .line 1399
    .local p4, "declClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    invoke-direct {v0, p3, p5, p2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    .local v0, "delegator":Ljavassist/bytecode/MethodInfo;
    nop

    .line 1401
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, -0x527

    or-int/lit8 v1, v1, 0x11

    .line 1400
    invoke-virtual {v0, v1}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1406
    invoke-static {v0, p3, p1}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V

    .line 1407
    new-instance v1, Ljavassist/bytecode/Bytecode;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2, v2}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1408
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1409
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ljavassist/util/proxy/ProxyFactory;->addLoadParameters(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;I)I

    move-result v2

    .line 1410
    .local v2, "s":I
    invoke-direct {p0, p4}, Ljavassist/util/proxy/ProxyFactory;->invokespecialTarget(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 1411
    .local v4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljavassist/bytecode/ConstPool;->addClassInfo(Ljava/lang/String;)I

    move-result v6

    .line 1412
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1411
    invoke-virtual {v1, v5, v6, v7, p2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(ZILjava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v5}, Ljavassist/util/proxy/ProxyFactory;->addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I

    .line 1414
    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljavassist/bytecode/Bytecode;->setMaxLocals(I)V

    .line 1415
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1416
    return-object v0
.end method

.method private static makeForwarder(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;ILjava/util/List;)Ljavassist/bytecode/MethodInfo;
    .locals 16
    .param p0, "thisClassName"    # Ljava/lang/String;
    .param p1, "meth"    # Ljava/lang/reflect/Method;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p5, "delegatorName"    # Ljava/lang/String;
    .param p6, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;",
            ">;)",
            "Ljavassist/bytecode/MethodInfo;"
        }
    .end annotation

    .line 1440
    .local p4, "declClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p7, "forwarders":Ljava/util/List;, "Ljava/util/List<Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Ljavassist/bytecode/MethodInfo;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    .local v3, "forwarder":Ljavassist/bytecode/MethodInfo;
    nop

    .line 1442
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, -0x521

    or-int/lit8 v4, v4, 0x10

    .line 1441
    invoke-virtual {v3, v4}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1445
    move-object/from16 v4, p1

    invoke-static {v3, v2, v4}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V

    .line 1446
    invoke-static/range {p2 .. p2}, Ljavassist/bytecode/Descriptor;->paramSize(Ljava/lang/String;)I

    move-result v5

    .line 1447
    .local v5, "args":I
    new-instance v6, Ljavassist/bytecode/Bytecode;

    add-int/lit8 v7, v5, 0x2

    const/4 v8, 0x0

    invoke-direct {v6, v2, v8, v7}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    .line 1460
    .local v6, "code":Ljavassist/bytecode/Bytecode;
    mul-int/lit8 v7, p6, 0x2

    .line 1461
    .local v7, "origIndex":I
    mul-int/lit8 v9, p6, 0x2

    add-int/lit8 v9, v9, 0x1

    .line 1462
    .local v9, "delIndex":I
    add-int/lit8 v10, v5, 0x1

    .line 1463
    .local v10, "arrayVar":I
    const-string v11, "_methods_"

    const-string v12, "[Ljava/lang/reflect/Method;"

    invoke-virtual {v6, v0, v11, v12}, Ljavassist/bytecode/Bytecode;->addGetstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v6, v10}, Ljavassist/bytecode/Bytecode;->addAstore(I)V

    .line 1466
    new-instance v11, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p5

    invoke-direct {v11, v12, v13, v1, v7}, Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, p7

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1469
    sget-object v11, Ljavassist/util/proxy/ProxyFactory;->HANDLER_TYPE:Ljava/lang/String;

    const-string v14, "handler"

    invoke-virtual {v6, v0, v14, v11}, Ljavassist/bytecode/Bytecode;->addGetfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1472
    invoke-virtual {v6, v10}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1473
    invoke-virtual {v6, v7}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1474
    const/16 v8, 0x32

    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1476
    invoke-virtual {v6, v10}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1477
    invoke-virtual {v6, v9}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1478
    invoke-virtual {v6, v8}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1480
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v6, v8}, Ljavassist/util/proxy/ProxyFactory;->makeParameterList(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;)V

    .line 1481
    const-class v8, Ljavassist/util/proxy/MethodHandler;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "invoke"

    const-string v14, "(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;"

    const/4 v15, 0x5

    invoke-virtual {v6, v8, v11, v14, v15}, Ljavassist/bytecode/Bytecode;->addInvokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1484
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    .line 1485
    .local v8, "retType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6, v8}, Ljavassist/util/proxy/ProxyFactory;->addUnwrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)V

    .line 1486
    invoke-static {v6, v8}, Ljavassist/util/proxy/ProxyFactory;->addReturn(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;)I

    .line 1488
    invoke-virtual {v6}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v11

    .line 1489
    .local v11, "ca":Ljavassist/bytecode/CodeAttribute;
    invoke-virtual {v3, v11}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1490
    return-object v3
.end method

.method private static makeParameterList(Ljavassist/bytecode/Bytecode;[Ljava/lang/Class;)V
    .locals 5
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1581
    .local p1, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    .line 1582
    .local v0, "regno":I
    array-length v1, p1

    .line 1583
    .local v1, "n":I
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1584
    const-string v2, "java/lang/Object"

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addAnewarray(Ljava/lang/String;)V

    .line 1585
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1586
    const/16 v3, 0x59

    invoke-virtual {p0, v3}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1587
    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addIconst(I)V

    .line 1588
    aget-object v3, p1, v2

    .line 1589
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1590
    invoke-static {p0, v3, v0}, Ljavassist/util/proxy/ProxyFactory;->makeWrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;I)I

    move-result v0

    goto :goto_1

    .line 1592
    :cond_0
    invoke-virtual {p0, v0}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1593
    add-int/lit8 v0, v0, 0x1

    .line 1596
    :goto_1
    const/16 v4, 0x53

    invoke-virtual {p0, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1585
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1598
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static makeProxyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classname"    # Ljava/lang/String;

    .line 887
    sget-object v0, Ljavassist/util/proxy/ProxyFactory;->nameGenerator:Ljavassist/util/proxy/ProxyFactory$UniqueName;

    monitor-enter v0

    .line 888
    :try_start_0
    sget-object v1, Ljavassist/util/proxy/ProxyFactory;->nameGenerator:Ljavassist/util/proxy/ProxyFactory$UniqueName;

    invoke-interface {v1, p0}, Ljavassist/util/proxy/ProxyFactory$UniqueName;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 889
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeSortedMethodList()V
    .locals 3

    .line 988
    invoke-direct {p0}, Ljavassist/util/proxy/ProxyFactory;->checkClassAndSuperName()V

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->hasGetHandler:Z

    .line 991
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Ljavassist/util/proxy/ProxyFactory;->getMethods(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 992
    .local v0, "allMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    .line 993
    sget-object v2, Ljavassist/util/proxy/ProxyFactory;->sorter:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 994
    return-void
.end method

.method private static makeUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1218
    .local p1, "sortedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    return-object p0

    .line 1221
    :cond_0
    const/16 v0, 0x64

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3e7

    if-ge v0, v1, :cond_2

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, "s":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1224
    return-object v1

    .line 1221
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot make a unique method name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeUniqueName0(Ljava/lang/String;Ljava/util/Iterator;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;)Z"
        }
    .end annotation

    .line 1231
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1233
    const/4 v0, 0x0

    return v0

    .line 1234
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static makeWrapper(Ljavassist/bytecode/Bytecode;Ljava/lang/Class;I)I
    .locals 4
    .param p0, "code"    # Ljavassist/bytecode/Bytecode;
    .param p2, "regno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/Bytecode;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 1601
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljavassist/util/proxy/FactoryHelper;->typeIndex(Ljava/lang/Class;)I

    move-result v0

    .line 1602
    .local v0, "index":I
    sget-object v1, Ljavassist/util/proxy/FactoryHelper;->wrapperTypes:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1603
    .local v1, "wrapper":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljavassist/bytecode/Bytecode;->addNew(Ljava/lang/String;)V

    .line 1604
    const/16 v2, 0x59

    invoke-virtual {p0, v2}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1605
    invoke-static {p0, p2, p1}, Ljavassist/util/proxy/ProxyFactory;->addLoad(Ljavassist/bytecode/Bytecode;ILjava/lang/Class;)I

    .line 1606
    sget-object v2, Ljavassist/util/proxy/FactoryHelper;->wrapperDesc:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "<init>"

    invoke-virtual {p0, v1, v3, v2}, Ljavassist/bytecode/Bytecode;->addInvokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    sget-object v2, Ljavassist/util/proxy/FactoryHelper;->dataSize:[I

    aget v2, v2, v0

    add-int/2addr v2, p2

    return v2
.end method

.method private static makeWriteReplace(Ljavassist/bytecode/ConstPool;)Ljavassist/bytecode/MethodInfo;
    .locals 7
    .param p0, "cp"    # Ljavassist/bytecode/ConstPool;

    .line 1629
    new-instance v0, Ljavassist/bytecode/MethodInfo;

    const-string v1, "writeReplace"

    const-string v2, "()Ljava/lang/Object;"

    invoke-direct {v0, p0, v1, v2}, Ljavassist/bytecode/MethodInfo;-><init>(Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    .local v0, "minfo":Ljavassist/bytecode/MethodInfo;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1631
    .local v2, "list":[Ljava/lang/String;
    const-string v3, "java.io.ObjectStreamException"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1632
    new-instance v3, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v3, p0}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 1633
    .local v3, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    invoke-virtual {v3, v2}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v0, v3}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 1635
    new-instance v5, Ljavassist/bytecode/Bytecode;

    invoke-direct {v5, p0, v4, v1}, Ljavassist/bytecode/Bytecode;-><init>(Ljavassist/bytecode/ConstPool;II)V

    move-object v1, v5

    .line 1636
    .local v1, "code":Ljavassist/bytecode/Bytecode;
    invoke-virtual {v1, v4}, Ljavassist/bytecode/Bytecode;->addAload(I)V

    .line 1637
    const-string v4, "javassist.util.proxy.RuntimeSupport"

    const-string v5, "makeSerializedProxy"

    const-string v6, "(Ljava/lang/Object;)Ljavassist/util/proxy/SerializedProxy;"

    invoke-virtual {v1, v4, v5, v6}, Ljavassist/bytecode/Bytecode;->addInvokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const/16 v4, 0xb0

    invoke-virtual {v1, v4}, Ljavassist/bytecode/Bytecode;->addOpcode(I)V

    .line 1641
    invoke-virtual {v1}, Ljavassist/bytecode/Bytecode;->toCodeAttribute()Ljavassist/bytecode/CodeAttribute;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavassist/bytecode/MethodInfo;->setCodeAttribute(Ljavassist/bytecode/CodeAttribute;)V

    .line 1642
    return-object v0
.end method

.method private override(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/util/List;)V
    .locals 13
    .param p1, "thisClassname"    # Ljava/lang/String;
    .param p2, "meth"    # Ljava/lang/reflect/Method;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p7, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/ClassFile;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/List<",
            "Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1182
    .local p8, "forwarders":Ljava/util/List;, "Ljava/util/List<Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;>;"
    move-object/from16 v0, p6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    .line 1183
    .local v9, "declClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, p3

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1184
    .local v7, "delegatorName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    const/4 v7, 0x0

    move-object v12, v7

    goto :goto_0

    .line 1187
    :cond_0
    nop

    .line 1188
    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Ljavassist/util/proxy/ProxyFactory;->makeDelegator(Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    .line 1190
    .local v1, "delegator":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v1}, Ljavassist/bytecode/MethodInfo;->getAccessFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x41

    invoke-virtual {v1, v2}, Ljavassist/bytecode/MethodInfo;->setAccessFlags(I)V

    .line 1191
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    move-object v12, v7

    .line 1194
    .end local v1    # "delegator":Ljavassist/bytecode/MethodInfo;
    .end local v7    # "delegatorName":Ljava/lang/String;
    .local v12, "delegatorName":Ljava/lang/String;
    :goto_0
    nop

    .line 1195
    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object v5, v9

    move-object v6, v12

    move/from16 v7, p4

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Ljavassist/util/proxy/ProxyFactory;->makeForwarder(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;Ljavassist/bytecode/ConstPool;Ljava/lang/Class;Ljava/lang/String;ILjava/util/List;)Ljavassist/bytecode/MethodInfo;

    move-result-object v1

    .line 1197
    .local v1, "forwarder":Ljavassist/bytecode/MethodInfo;
    invoke-virtual {v0, v1}, Ljavassist/bytecode/ClassFile;->addMethod(Ljavassist/bytecode/MethodInfo;)V

    .line 1198
    return-void
.end method

.method private overrideMethods(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/lang/String;Ljava/util/List;)I
    .locals 14
    .param p1, "cf"    # Ljavassist/bytecode/ClassFile;
    .param p2, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p3, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 1156
    .local p4, "forwarders":Ljava/util/List;, "Ljava/util/List<Ljavassist/util/proxy/ProxyFactory$Find2MethodsArgs;>;"
    move-object v9, p0

    iget-object v0, v9, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    const-string v1, "_d"

    invoke-static {v1, v0}, Ljavassist/util/proxy/ProxyFactory;->makeUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 1157
    .local v10, "prefix":Ljava/lang/String;
    iget-object v0, v9, Ljavassist/util/proxy/ProxyFactory;->signatureMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1158
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v0, 0x0

    move v12, v0

    .line 1159
    .local v12, "index":I
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 1161
    .local v13, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    sget v0, Ljavassist/bytecode/ClassFile;->MAJOR_VERSION:I

    const/16 v1, 0x31

    if-lt v0, v1, :cond_0

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->isBridge(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1162
    :cond_0
    iget-object v0, v9, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    invoke-direct {p0, v0, v12}, Ljavassist/util/proxy/ProxyFactory;->testBit([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1164
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1}, Ljavassist/util/proxy/ProxyFactory;->keyToDesc(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    .line 1163
    move-object v0, p0

    move-object/from16 v1, p3

    move-object v3, v10

    move v4, v12

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Ljavassist/util/proxy/ProxyFactory;->override(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/ConstPool;Ljava/util/List;)V

    .line 1167
    :cond_1
    nop

    .end local v13    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    add-int/lit8 v12, v12, 0x1

    .line 1168
    goto :goto_0

    .line 1170
    :cond_2
    return v12
.end method

.method private setBit([BI)V
    .locals 5
    .param p1, "signature"    # [B
    .param p2, "idx"    # I

    .line 1038
    shr-int/lit8 v0, p2, 0x3

    .line 1039
    .local v0, "byteIdx":I
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1040
    and-int/lit8 v1, p2, 0x7

    .line 1041
    .local v1, "bitIdx":I
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 1042
    .local v2, "mask":I
    aget-byte v3, p1, v0

    .line 1043
    .local v3, "sigByte":I
    or-int v4, v3, v2

    int-to-byte v4, v4

    aput-byte v4, p1, v0

    .line 1045
    .end local v1    # "bitIdx":I
    .end local v2    # "mask":I
    .end local v3    # "sigByte":I
    :cond_0
    return-void
.end method

.method private setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 675
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 676
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V

    .line 677
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavassist/util/proxy/SecurityActions;->setAccessible(Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v0    # "f":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 683
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private static setInterfaces(Ljavassist/bytecode/ClassFile;[Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .param p0, "cf"    # Ljavassist/bytecode/ClassFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1048
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "setterIntf":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 1053
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v1, v2, [Ljava/lang/String;

    .line 1054
    .local v1, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1055
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    .end local v2    # "i":I
    :cond_1
    array-length v2, p1

    aput-object v0, v1, v2

    goto :goto_2

    .line 1051
    .end local v1    # "list":[Ljava/lang/String;
    :cond_2
    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 1060
    .restart local v1    # "list":[Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ClassFile;->setInterfaces([Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method private static setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .param p2, "orig"    # Ljava/lang/reflect/Method;

    .line 1506
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1507
    .local v0, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, v0}, Ljavassist/util/proxy/ProxyFactory;->setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V

    .line 1508
    return-void
.end method

.method private static setThrows(Ljavassist/bytecode/MethodInfo;Ljavassist/bytecode/ConstPool;[Ljava/lang/Class;)V
    .locals 3
    .param p0, "minfo"    # Ljavassist/bytecode/MethodInfo;
    .param p1, "cp"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            "Ljavassist/bytecode/ConstPool;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1512
    .local p2, "exceptions":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    if-nez v0, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    .line 1516
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1517
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1519
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljavassist/bytecode/ExceptionsAttribute;

    invoke-direct {v1, p1}, Ljavassist/bytecode/ExceptionsAttribute;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 1520
    .local v1, "ea":Ljavassist/bytecode/ExceptionsAttribute;
    invoke-virtual {v1, v0}, Ljavassist/bytecode/ExceptionsAttribute;->setExceptions([Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p0, v1}, Ljavassist/bytecode/MethodInfo;->setExceptionsAttribute(Ljavassist/bytecode/ExceptionsAttribute;)V

    .line 1522
    return-void
.end method

.method private testBit([BI)Z
    .locals 7
    .param p1, "signature"    # [B
    .param p2, "idx"    # I

    .line 1028
    shr-int/lit8 v0, p2, 0x3

    .line 1029
    .local v0, "byteIdx":I
    array-length v1, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 1030
    return v2

    .line 1031
    :cond_0
    and-int/lit8 v1, p2, 0x7

    .line 1032
    .local v1, "bitIdx":I
    const/4 v3, 0x1

    shl-int v4, v3, v1

    .line 1033
    .local v4, "mask":I
    aget-byte v5, p1, v0

    .line 1034
    .local v5, "sigByte":I
    and-int v6, v5, v4

    if-eqz v6, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method


# virtual methods
.method public create([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 828
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyFactory;->createClass()Ljava/lang/Class;

    move-result-object v0

    .line 829
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 830
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public create([Ljava/lang/Class;[Ljava/lang/Object;Ljavassist/util/proxy/MethodHandler;)Ljava/lang/Object;
    .locals 2
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "mh"    # Ljavassist/util/proxy/MethodHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Ljavassist/util/proxy/MethodHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 813
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljavassist/util/proxy/ProxyFactory;->create([Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 814
    .local v0, "obj":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Ljavassist/util/proxy/Proxy;

    invoke-interface {v1, p3}, Ljavassist/util/proxy/Proxy;->setHandler(Ljavassist/util/proxy/MethodHandler;)V

    .line 815
    return-object v0
.end method

.method public createClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 481
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createClass(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;
    .locals 1
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 521
    :cond_0
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createClass(Ljava/lang/invoke/MethodHandles$Lookup;Ljavassist/util/proxy/MethodFilter;)Ljava/lang/Class;
    .locals 1
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p2, "filter"    # Ljavassist/util/proxy/MethodFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljavassist/util/proxy/MethodFilter;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 535
    invoke-direct {p0, p2}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 536
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method createClass(Ljava/lang/invoke/MethodHandles$Lookup;[B)Ljava/lang/Class;
    .locals 1
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 550
    invoke-direct {p0, p2}, Ljavassist/util/proxy/ProxyFactory;->installSignature([B)V

    .line 551
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createClass(Ljavassist/util/proxy/MethodFilter;)Ljava/lang/Class;
    .locals 1
    .param p1, "filter"    # Ljavassist/util/proxy/MethodFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/util/proxy/MethodFilter;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->computeSignature(Ljavassist/util/proxy/MethodFilter;)V

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method createClass([B)Ljava/lang/Class;
    .locals 1
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 501
    invoke-direct {p0, p1}, Ljavassist/util/proxy/ProxyFactory;->installSignature([B)V

    .line 502
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/util/proxy/ProxyFactory;->createClass1(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 766
    sget-object v0, Ljavassist/util/proxy/ProxyFactory;->classLoaderProvider:Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;

    invoke-interface {v0, p0}, Ljavassist/util/proxy/ProxyFactory$ClassLoaderProvider;->get(Ljavassist/util/proxy/ProxyFactory;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected getClassLoader0()Ljava/lang/ClassLoader;
    .locals 3

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "loader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.Object"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_0
    iget-object v1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 774
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 776
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 777
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 779
    if-nez v0, :cond_2

    .line 780
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 781
    if-nez v0, :cond_2

    .line 782
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 786
    :cond_2
    return-object v0
.end method

.method protected getDomain()Ljava/security/ProtectionDomain;
    .locals 2

    .line 791
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 793
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 794
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 796
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 798
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v1

    return-object v1
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 431
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    return-object v0
.end method

.method public getKey(Ljava/lang/Class;[Ljava/lang/Class;[BZ)Ljava/lang/String;
    .locals 6
    .param p3, "signature"    # [B
    .param p4, "useWriteReplace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[BZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 579
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 585
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 588
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p3

    if-ge v1, v2, :cond_2

    .line 589
    aget-byte v2, p3, v1

    .line 590
    .local v2, "b":B
    and-int/lit8 v3, v2, 0xf

    .line 591
    .local v3, "lo":I
    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 592
    .local v4, "hi":I
    sget-object v5, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    aget-char v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 593
    sget-object v5, Ljavassist/util/proxy/ProxyFactory;->hexDigits:[C

    aget-char v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    .end local v2    # "b":B
    .end local v3    # "lo":I
    .end local v4    # "hi":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 595
    .end local v1    # "i":I
    :cond_2
    if-eqz p4, :cond_3

    .line 596
    const-string v1, ":w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSuperclass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isUseCache()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    return v0
.end method

.method public isUseWriteReplace()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    return v0
.end method

.method public setFilter(Ljavassist/util/proxy/MethodFilter;)V
    .locals 1
    .param p1, "mf"    # Ljavassist/util/proxy/MethodFilter;

    .line 437
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->methodFilter:Ljavassist/util/proxy/MethodFilter;

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 440
    return-void
.end method

.method public setGenericSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "sig"    # Ljava/lang/String;

    .line 467
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->genericSignature:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setHandler(Ljavassist/util/proxy/MethodHandler;)V
    .locals 1
    .param p1, "mi"    # Ljavassist/util/proxy/MethodHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 846
    iget-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 847
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->thisClass:Ljava/lang/Class;

    .line 851
    :cond_0
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    .line 854
    const-string v0, "default_interceptor"

    invoke-direct {p0, v0, p1}, Ljavassist/util/proxy/ProxyFactory;->setField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    return-void
.end method

.method public setInterfaces([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 421
    .local p1, "ifs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->interfaces:[Ljava/lang/Class;

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 424
    return-void
.end method

.method public setSuperclass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 405
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Ljavassist/util/proxy/ProxyFactory;->superClass:Ljava/lang/Class;

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->signature:[B

    .line 408
    return-void
.end method

.method public setUseCache(Z)V
    .locals 2
    .param p1, "useCache"    # Z

    .line 313
    iget-object v0, p0, Ljavassist/util/proxy/ProxyFactory;->handler:Ljavassist/util/proxy/MethodHandler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "caching cannot be enabled if the factory default interceptor has been set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    :goto_0
    iput-boolean p1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryUseCache:Z

    .line 317
    return-void
.end method

.method public setUseWriteReplace(Z)V
    .locals 0
    .param p1, "useWriteReplace"    # Z

    .line 335
    iput-boolean p1, p0, Ljavassist/util/proxy/ProxyFactory;->factoryWriteReplace:Z

    .line 336
    return-void
.end method
