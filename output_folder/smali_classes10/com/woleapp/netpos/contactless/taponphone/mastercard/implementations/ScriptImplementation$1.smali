.class Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;
.super Ljava/lang/Object;
.source "ScriptImplementation.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/objects/ApplicationInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->onDataReceived(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mastercard/terminalsdk/objects/ApplicationInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

.field final synthetic val$dataRequested:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dataRequested"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->val$dataRequested:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public additionalTlvs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->val$dataRequested:Ljava/util/ArrayList;

    return-object v0
.end method

.method public continueWithTransaction()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public tagsToRead()[B
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->access$100(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)[B

    move-result-object v0

    .line 85
    .local v0, "toBeRead":[B
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->access$200(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)V

    .line 86
    return-object v0
.end method

.method public tlvsToWriteAfterGenAC()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    .line 66
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 67
    .local v2, "ba9F75":[B
    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag;

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v4, 0x0

    const/16 v5, 0xff

    const-string v6, "Unprotected DataStore 1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    .line 69
    .local v0, "tag9f75":Lcom/mastercard/terminalsdk/emv/Tag;
    new-instance v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "48656c6c6f20576f726c64207772697474656e206f6e20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    .line 72
    invoke-static {v5}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->access$000(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    .line 75
    .local v1, "tlv9F75":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "tagsToWrite":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    iget-boolean v4, v4, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->activateWrite:Z

    if-eqz v4, :cond_0

    .line 77
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-object v3

    nop

    :array_0
    .array-data 1
        -0x61t
        0x75t
    .end array-data
.end method

.method public tlvsToWriteBeforeGenAC()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 50
    .local v2, "ba9F76":[B
    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag;

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v4, 0x0

    const/16 v5, 0xff

    const-string v6, "Unprotected DataStore 2"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/mastercard/terminalsdk/emv/Tag;-><init>([BLcom/mastercard/terminalsdk/emv/Tag$Format;IILjava/lang/String;)V

    .line 52
    .local v0, "tag9f76":Lcom/mastercard/terminalsdk/emv/Tag;
    new-instance v1, Lcom/mastercard/terminalsdk/iso8825/BerTlv;

    new-instance v3, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "48656c6c6f20576f726c64207772697474656e206f6e20"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    .line 55
    invoke-static {v5}, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->access$000(Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Lcom/mastercard/terminalsdk/iso8825/BerTlv;-><init>(Lcom/mastercard/terminalsdk/emv/Tag;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V

    .line 57
    .local v1, "tlv9F76":Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "tagsToWrite":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mastercard/terminalsdk/iso8825/BerTlv;>;"
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation$1;->this$0:Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;

    iget-boolean v4, v4, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/ScriptImplementation;->activateWrite:Z

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-object v3

    nop

    :array_0
    .array-data 1
        -0x61t
        0x76t
    .end array-data
.end method
