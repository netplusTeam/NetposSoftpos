.class public abstract Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;,
        Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field static final UNINITIALIZED_HASH_CODE:I = 0x0

.field static final UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 379
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;-><init>()V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;

    .line 60
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkIsLite(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static checkIsLite(Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1512
    .local p0, "extension":Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;, "Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    move-object v0, p0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0

    .line 1513
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected a lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1712
    .local p0, "message":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1713
    :cond_0
    nop

    .line 1714
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newUninitializedMessageException()Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 1715
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 1716
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1718
    :cond_1
    :goto_0
    return-object p0
.end method

.method private computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nullableSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "*>;)I"
        }
    .end annotation

    .line 366
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "nullableSchema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<*>;"
    if-nez p1, :cond_0

    .line 367
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 369
    :cond_0
    nop

    .line 370
    invoke-interface {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->getSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 369
    return v0
.end method

.method protected static emptyBooleanList()Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .locals 1

    .line 1585
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .locals 1

    .line 1575
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .locals 1

    .line 1565
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .locals 1

    .line 1545
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;
    .locals 1

    .line 1555
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1595
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ProtobufArrayList;->emptyList()Lcom/google/crypto/tink/shaded/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 192
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->newInstance()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 195
    :cond_0
    return-void
.end method

.method static getDefaultInstance(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 384
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    .line 385
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    if-nez v0, :cond_0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    nop

    .line 393
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Class initialization cannot fail."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 395
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 398
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_1

    .line 403
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 401
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 405
    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "name",
            "params"
        }
    .end annotation

    .line 1261
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1264
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "object",
            "params"
        }
    .end annotation

    .line 1272
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1276
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1278
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1280
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1281
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1283
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1279
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1273
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1274
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final isInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Z)Z
    .locals 4
    .param p1, "shouldMemoize"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "shouldMemoize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1526
    .local p0, "message":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1527
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1528
    .local v0, "memoizedIsInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1529
    return v1

    .line 1531
    :cond_0
    if-nez v0, :cond_1

    .line 1532
    const/4 v1, 0x0

    return v1

    .line 1534
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v1

    .line 1535
    .local v1, "isInitialized":Z
    if-eqz p1, :cond_3

    .line 1537
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 1539
    if-eqz v1, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1538
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    :cond_3
    return v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .locals 2
    .param p0, "list"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1589
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;->size()I

    move-result v0

    .line 1590
    .local v0, "size":I
    nop

    .line 1591
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1590
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$BooleanList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .locals 2
    .param p0, "list"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1579
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;->size()I

    move-result v0

    .line 1580
    .local v0, "size":I
    nop

    .line 1581
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1580
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$DoubleList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .locals 2
    .param p0, "list"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1569
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;->size()I

    move-result v0

    .line 1570
    .local v0, "size":I
    nop

    .line 1571
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1570
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$FloatList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .locals 2
    .param p0, "list"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1549
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->size()I

    move-result v0

    .line 1550
    .local v0, "size":I
    nop

    .line 1551
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1550
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;
    .locals 2
    .param p0, "list"    # Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1559
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;->size()I

    move-result v0

    .line 1560
    .local v0, "size":I
    nop

    .line 1561
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1560
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$LongList;

    move-result-object v1

    return-object v1
.end method

.method protected static mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 1599
    .local p0, "list":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 1600
    .local v0, "size":I
    nop

    .line 1601
    if-nez v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1600
    :goto_0
    invoke-interface {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method protected static newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "defaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "info",
            "objects"
        }
    .end annotation

    .line 421
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .param p1, "messageDefaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "isPacked",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1182
    .local p0, "containingTypeDefaultInstance":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 1183
    .local v6, "emptyList":Ljava/lang/Object;, "TType;"
    new-instance v7, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v8, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v0, v8

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v8

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method public static newSingularGeneratedExtension(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .param p2, "messageDefaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "containingTypeDefaultInstance",
            "defaultValue",
            "messageDefaultInstance",
            "enumTypeMap",
            "number",
            "type",
            "singularType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1162
    .local p0, "containingTypeDefaultInstance":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<*>;"
    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v7, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;ILcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v6
.end method

.method protected static parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1813
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1815
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 1814
    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1813
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1822
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1823
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1822
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1738
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1739
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1738
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1746
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1800
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1807
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1782
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1785
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v0

    .line 1786
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1783
    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1782
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1793
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1794
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1793
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1732
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1725
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    nop

    .line 1726
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1725
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1767
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1768
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 1767
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method protected static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 2
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[B",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1775
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    array-length v0, p1

    .line 1776
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePartialDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1832
    .local v0, "firstByte":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1833
    const/4 v1, 0x0

    return-object v1

    .line 1835
    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readRawVarint32(ILjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 1843
    .local v0, "size":I
    nop

    .line 1844
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder$LimitedInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite$Builder$LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1845
    .local v1, "limitedInput":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v2

    .line 1846
    .local v2, "codedInput":Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    invoke-static {p0, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v3

    .line 1848
    .local v3, "message":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1851
    nop

    .line 1852
    return-object v3

    .line 1849
    :catch_0
    move-exception v4

    .line 1850
    .local v4, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5

    .line 1841
    .end local v0    # "size":I
    .end local v1    # "limitedInput":Ljava/io/InputStream;
    .end local v2    # "codedInput":Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .end local v3    # "message":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    .end local v4    # "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v0

    .line 1842
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1836
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1837
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1838
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    .line 1840
    :cond_1
    throw v0
.end method

.method private static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 4
    .param p1, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1754
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v0

    .line 1755
    .local v0, "input":Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    invoke-static {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    .line 1757
    .local v1, "message":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    nop

    .line 1761
    return-object v1

    .line 1758
    :catch_0
    move-exception v2

    .line 1759
    .local v2, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
.end method

.method protected static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .param p1, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "defaultInstance",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1701
    .local p0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 3
    .param p1, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1642
    .local p0, "instance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 1646
    .local v0, "result":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    .line 1647
    .local v1, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TT;>;"
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->forCodedInput(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;

    move-result-object v2

    invoke-interface {v1, v0, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 1648
    invoke-interface {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1666
    .end local v1    # "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TT;>;"
    nop

    .line 1667
    return-object v0

    .line 1661
    :catch_0
    move-exception v1

    .line 1662
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_0

    .line 1663
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1665
    :cond_0
    throw v1

    .line 1656
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1657
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz v2, :cond_1

    .line 1658
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw v2

    .line 1660
    :cond_1
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1654
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1655
    .local v1, "e":Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    .line 1649
    .end local v1    # "e":Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;
    :catch_3
    move-exception v1

    .line 1650
    .local v1, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1651
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v1, v2

    .line 1653
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private static parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BIILcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 8
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "input",
            "offset",
            "length",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1675
    .local p0, "instance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v6

    .line 1677
    .local v6, "result":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    move-object v7, v0

    .line 1678
    .local v7, "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TT;>;"
    add-int v4, p2, p3

    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;

    invoke-direct {v5, p4}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;-><init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    move-object v0, v7

    move-object v1, v6

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V

    .line 1680
    invoke-interface {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    .end local v7    # "schema":Lcom/google/crypto/tink/shaded/protobuf/Schema;, "Lcom/google/crypto/tink/shaded/protobuf/Schema<TT;>;"
    nop

    .line 1696
    return-object v6

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1688
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1689
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    if-eqz v1, :cond_0

    .line 1690
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw v1

    .line 1692
    :cond_0
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1686
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1687
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1681
    .end local v0    # "e":Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;
    :catch_3
    move-exception v0

    .line 1682
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getThrownFromInputStream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1683
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    .line 1685
    :cond_1
    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method protected static registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clazz",
            "defaultInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 415
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TT;"
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 416
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method


# virtual methods
.method buildMessageInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 376
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method clearMemoizedHashCode()V
    .locals 1

    .line 103
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 104
    return-void
.end method

.method clearMemoizedSerializedSize()V
    .locals 1

    .line 312
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 313
    return-void
.end method

.method computeHashCode()I
    .locals 1

    .line 164
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method protected final createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    .local p1, "prototype":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "TMessageType;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "method"
        }
    .end annotation

    .line 308
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0"
        }
    .end annotation

    .line 303
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ne p0, p1, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 176
    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 180
    return v0

    .line 183
    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-interface {v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method getMemoizedHashCode()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    return v0
.end method

.method getMemoizedSerializedSize()I
    .locals 2

    .line 317
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TMessageType;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 1

    .line 362
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v0

    return v0
.end method

.method getSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I
    .locals 4
    .param p1, "schema"    # Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "schema"
        }
    .end annotation

    .line 338
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v0

    .line 341
    .local v0, "size":I
    if-ltz v0, :cond_0

    .line 344
    return v0

    .line 342
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serialized size must be non-negative, was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v0    # "size":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedSerializedSize()I

    move-result v0

    return v0

    .line 353
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeSerializedSize(Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v0

    .line 354
    .restart local v0    # "size":I
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedSerializedSize(I)V

    .line 355
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->hashCodeIsNotMemoized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->computeHashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->setMemoizedHashCode(I)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    return v0
.end method

.method hashCodeIsNotMemoized()Z
    .locals 1

    .line 107
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getMemoizedHashCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 246
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isInitialized(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Z)Z

    move-result v0

    return v0
.end method

.method isMutable()Z
    .locals 2

    .line 87
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected makeImmutable()V
    .locals 1

    .line 226
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->markImmutable()V

    .line 228
    return-void
.end method

.method markImmutable()V
    .locals 2

    .line 91
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 92
    return-void
.end method

.method protected mergeLengthDelimitedField(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 220
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeLengthDelimitedField(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 222
    return-void
.end method

.method protected final mergeUnknownFields(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)V
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mutableCopyOf(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 431
    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 215
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeVarintField(II)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    .line 216
    return-void
.end method

.method public final newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method newMutableInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    return-object v0
.end method

.method protected parseUnknownField(ILcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Z
    .locals 2
    .param p1, "tag"    # I
    .param p2, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 205
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->ensureUnknownFieldsInitialized()V

    .line 209
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->mergeFieldFrom(ILcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method setMemoizedHashCode(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedHashCode:I

    .line 100
    return-void
.end method

.method setMemoizedSerializedSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    if-ltz p1, :cond_0

    .line 325
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->memoizedSerializedSize:I

    .line 327
    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serialized size must be non-negative, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    .line 253
    .local v0, "builder":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;, "TBuilderType;"
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 60
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 146
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLiteToString;->toString(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<TMessageType;TBuilderType;>;"
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    .line 332
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    .line 333
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStreamWriter;->forCodedOutput(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStreamWriter;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 334
    return-void
.end method
