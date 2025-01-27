.class public Lorg/jpos/tlv/ISOMsgRef$Ref;
.super Lorg/jpos/iso/ISOMsg;
.source "ISOMsgRef.java"

# interfaces
.implements Lorg/jpos/tlv/OffsetIndexedComposite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/tlv/ISOMsgRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ref"
.end annotation


# instance fields
.field private fieldNumber:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/jpos/tlv/ISOMsgRef;


# direct methods
.method private constructor <init>(Lorg/jpos/tlv/ISOMsgRef;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/jpos/tlv/ISOMsgRef;
    .param p2, "fieldNumber"    # I

    .line 59
    iput-object p1, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-direct {p0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->fieldNumber:Ljava/lang/Integer;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lorg/jpos/tlv/ISOMsgRef;ILorg/jpos/tlv/ISOMsgRef$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jpos/tlv/ISOMsgRef;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/jpos/tlv/ISOMsgRef$1;

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/jpos/tlv/ISOMsgRef$Ref;-><init>(Lorg/jpos/tlv/ISOMsgRef;I)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clone([I)Ljava/lang/Object;
    .locals 1
    .param p1, "fields"    # [I

    .line 336
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->clone([I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I)[B
    .locals 1
    .param p1, "fldno"    # I

    .line 301
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/Map;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getChildren()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fldno"    # I

    .line 271
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Ljava/lang/String;)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getComponent(Ljava/lang/String;)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    return-object v0
.end method

.method public getComposite()Lorg/jpos/iso/ISOComponent;
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v1}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 119
    return-object p0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getDirection()I

    move-result v0

    return v0
.end method

.method public getHeader()[B
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v0

    return-object v0
.end method

.method public getISOHeader()Lorg/jpos/iso/ISOHeader;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getISOHeader()Lorg/jpos/iso/ISOHeader;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->fieldNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMTI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getMTI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxField()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$100(Lorg/jpos/tlv/ISOMsgRef;)I

    move-result v0

    return v0
.end method

.method public getPackager()Lorg/jpos/iso/ISOPackager;
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "fldno"    # I

    .line 291
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "fldno"    # I

    .line 276
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasField(I)Z
    .locals 1
    .param p1, "fldno"    # I

    .line 311
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v0

    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasFields()Z
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->hasFields()Z

    move-result v0

    return v0
.end method

.method public hasFields([I)Z
    .locals 1
    .param p1, "fields"    # [I

    .line 316
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->hasFields([I)Z

    move-result v0

    return v0
.end method

.method public incOffset()V
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$100(Lorg/jpos/tlv/ISOMsgRef;)I

    move-result v0

    iget-object v1, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v1}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$108(Lorg/jpos/tlv/ISOMsgRef;)I

    .line 68
    :cond_0
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->isIncoming()Z

    move-result v0

    return v0
.end method

.method public isInner()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->isInner()Z

    move-result v0

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->isOutgoing()Z

    move-result v0

    return v0
.end method

.method public isRequest()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->isRequest()Z

    move-result v0

    return v0
.end method

.method public merge(Lorg/jpos/iso/ISOMsg;)V
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 341
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 342
    return-void
.end method

.method public move(II)V
    .locals 1
    .param p1, "oldFieldNumber"    # I
    .param p2, "newFieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->move(II)V

    .line 362
    return-void
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->pack(Ljava/io/OutputStream;)V

    .line 153
    return-void
.end method

.method public pack()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->pack()[B

    move-result-object v0

    return-object v0
.end method

.method public recalcBitMap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->recalcBitMap()V

    .line 267
    return-void
.end method

.method public resetOffset()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jpos/tlv/ISOMsgRef;->access$102(Lorg/jpos/tlv/ISOMsgRef;I)I

    .line 80
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 1
    .param p1, "fldno"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->set(ILjava/lang/String;)V

    .line 232
    return-void
.end method

.method public set(I[B)V
    .locals 1
    .param p1, "fldno"    # I
    .param p2, "value"    # [B

    .line 251
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->set(I[B)V

    .line 252
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public set(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .line 242
    return-void
.end method

.method public set(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 246
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;[B)V

    .line 247
    return-void
.end method

.method public set(Lorg/jpos/iso/ISOComponent;)V
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 107
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 181
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 182
    return-void
.end method

.method public setFieldNumber(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->fieldNumber:Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public setHeader(Lorg/jpos/iso/ISOHeader;)V
    .locals 1
    .param p1, "header"    # Lorg/jpos/iso/ISOHeader;

    .line 191
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setHeader(Lorg/jpos/iso/ISOHeader;)V

    .line 192
    return-void
.end method

.method public setHeader([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 186
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 187
    return-void
.end method

.method public setMTI(Ljava/lang/String;)V
    .locals 1
    .param p1, "mti"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setMTI(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public setOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 72
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0, p1}, Lorg/jpos/tlv/ISOMsgRef;->access$102(Lorg/jpos/tlv/ISOMsgRef;I)I

    .line 75
    :cond_0
    return-void
.end method

.method public setPackager(Lorg/jpos/iso/ISOPackager;)V
    .locals 1
    .param p1, "p"    # Lorg/jpos/iso/ISOPackager;

    .line 221
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 222
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->setValue(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpack([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->unpack([B)I

    move-result v0

    return v0
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->unpack(Ljava/io/InputStream;)V

    .line 177
    return-void
.end method

.method public unset(I)V
    .locals 1
    .param p1, "fldno"    # I

    .line 112
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 113
    return-void
.end method

.method public unset(Ljava/lang/String;)V
    .locals 1
    .param p1, "fpath"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->unset(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public unset([I)V
    .locals 1
    .param p1, "flds"    # [I

    .line 256
    iget-object v0, p0, Lorg/jpos/tlv/ISOMsgRef$Ref;->this$0:Lorg/jpos/tlv/ISOMsgRef;

    invoke-static {v0}, Lorg/jpos/tlv/ISOMsgRef;->access$200(Lorg/jpos/tlv/ISOMsgRef;)Lorg/jpos/iso/ISOMsg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOMsg;->unset([I)V

    .line 257
    return-void
.end method
