.class public final Lcom/google/crypto/tink/proto/HpkeKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "HpkeKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/HpkeKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/HpkeKeyFormat;",
        "Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/HpkeKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

.field public static final PARAMS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkeKeyFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private params_:Lcom/google/crypto/tink/proto/HpkeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 259
    new-instance v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;-><init>()V

    .line 262
    .local v0, "defaultInstance":Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    sput-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    .line 263
    const-class v1, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 265
    .end local v0    # "defaultInstance":Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/HpkeKeyFormat;Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HpkeParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->setParams(Lcom/google/crypto/tink/proto/HpkeParams;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/HpkeKeyFormat;Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HpkeParams;

    .line 9
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->mergeParams(Lcom/google/crypto/tink/proto/HpkeParams;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/HpkeKeyFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    .line 9
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    .line 60
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    .locals 1

    .line 268
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HpkeParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    .line 49
    invoke-static {v0}, Lcom/google/crypto/tink/proto/HpkeParams;->newBuilder(Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeParams;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    .line 54
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;
    .locals 1

    .line 137
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/HpkeKeyFormat;)Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/crypto/tink/proto/HpkeKeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 114
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 120
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 78
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 85
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 125
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 132
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 102
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 109
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 65
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 72
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 90
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;
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

    .line 97
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/HpkeKeyFormat;",
            ">;"
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParams(Lcom/google/crypto/tink/proto/HpkeParams;)V
    .locals 0
    .param p1, "value"    # Lcom/google/crypto/tink/proto/HpkeParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iput-object p1, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    .line 39
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

    .line 211
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 249
    :pswitch_0
    return-object v2

    .line 246
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 231
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 232
    .local v0, "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HpkeKeyFormat;>;"
    if-nez v0, :cond_1

    .line 233
    const-class v1, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    monitor-enter v1

    .line 234
    :try_start_0
    sget-object v2, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-object v0, v2

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 239
    sput-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 241
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 243
    :cond_1
    :goto_0
    return-object v0

    .line 228
    .end local v0    # "parser":Lcom/google/crypto/tink/shaded/protobuf/Parser;, "Lcom/google/crypto/tink/shaded/protobuf/Parser<Lcom/google/crypto/tink/proto/HpkeKeyFormat;>;"
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    return-object v0

    .line 219
    :pswitch_4
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "params_"

    aput-object v2, v0, v1

    .line 222
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 224
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    invoke-direct {v0, v2}, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/HpkeKeyFormat$1;)V

    return-object v0

    .line 213
    :pswitch_6
    new-instance v0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;-><init>()V

    return-object v0

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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/HpkeParams;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->params_:Lcom/google/crypto/tink/proto/HpkeParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 9
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
