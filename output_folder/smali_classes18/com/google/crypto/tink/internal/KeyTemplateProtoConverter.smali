.class public final Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter;
.super Ljava/lang/Object;
.source "KeyTemplateProtoConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromByteArray([B)Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    nop

    .line 85
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 84
    invoke-static {p0, v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    .line 86
    .local v0, "proto":Lcom/google/crypto/tink/proto/KeyTemplate;
    invoke-static {v0}, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter;->fromProto(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 87
    .end local v0    # "proto":Lcom/google/crypto/tink/proto/KeyTemplate;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid key template"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromProto(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .param p0, "proto"    # Lcom/google/crypto/tink/proto/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    nop

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter;->prefixFromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/KeyTemplate;->create(Ljava/lang/String;[BLcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static prefixFromProto(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .locals 2
    .param p0, "outputPrefixType"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPrefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 41
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    return-object v0

    .line 37
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    return-object v0

    .line 35
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    return-object v0

    .line 33
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static prefixToProto(Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 2
    .param p0, "outputPrefixType"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPrefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter$1;->$SwitchMap$com$google$crypto$tink$KeyTemplate$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toByteArray(Lcom/google/crypto/tink/KeyTemplate;)[B
    .locals 1
    .param p0, "keyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter;->toProto(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toProto(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 2
    .param p0, "keyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/KeyTemplateProtoConverter;->prefixToProto(Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 62
    return-object v0
.end method
