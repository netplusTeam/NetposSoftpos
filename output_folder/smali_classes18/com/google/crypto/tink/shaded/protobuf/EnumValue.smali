.class public final Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "EnumValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;

.field private number_:I

.field private options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 518
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;-><init>()V

    .line 521
    .local v0, "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 522
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 524
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 17
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->clearOptions()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->removeOptions(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # I

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->setNumber(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->clearNumber()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->addAllOptions(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllOptions(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/shaded/protobuf/Option;>;"
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 170
    return-void
.end method

.method private addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 160
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 161
    return-void
.end method

.method private addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 151
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->number_:I

    .line 89
    return-void
.end method

.method private clearOptions()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->emptyProtobufList()Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 176
    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 130
    .local v0, "tmp":Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;, "Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList<Lcom/google/crypto/tink/shaded/protobuf/Option;>;"
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    nop

    .line 132
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    .line 134
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1

    .line 527
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 260
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 533
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOptions(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 182
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->checkByteStringIsUtf8(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 61
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private setNumber(I)V
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

    .line 81
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->number_:I

    .line 82
    return-void
.end method

.method private setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->ensureOptionsIsMutable()V

    .line 143
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;
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

    .line 466
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 508
    :pswitch_0
    return-object v2

    .line 505
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 490
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 491
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/shaded/protobuf/EnumValue;>;"
    if-nez v0, :cond_1

    .line 492
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    monitor-enter v1

    .line 493
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 494
    if-nez v0, :cond_0

    .line 495
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 498
    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 500
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 502
    :cond_1
    :goto_0
    return-object v0

    .line 487
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/shaded/protobuf/EnumValue;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    return-object v0

    .line 474
    :pswitch_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "name_"

    aput-object v3, v0, v2

    const-string v2, "number_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "options_"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    aput-object v2, v0, v1

    .line 480
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u0004\u0003\u001b"

    .line 483
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 471
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/EnumValue$1;)V

    return-object v0

    .line 468
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->number_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->options_:Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    return-object v0
.end method
