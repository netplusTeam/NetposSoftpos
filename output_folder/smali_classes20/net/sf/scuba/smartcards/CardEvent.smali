.class public Lnet/sf/scuba/smartcards/CardEvent;
.super Ljava/util/EventObject;
.source "CardEvent.java"


# static fields
.field public static final INSERTED:I = 0x1

.field public static final REMOVED:I = 0x0

.field private static final serialVersionUID:J = -0x4e580dbef0f77d37L


# instance fields
.field private transient service:Lnet/sf/scuba/smartcards/CardService;

.field private type:I


# direct methods
.method public constructor <init>(ILnet/sf/scuba/smartcards/CardService;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "service"    # Lnet/sf/scuba/smartcards/CardService;

    .line 55
    invoke-direct {p0, p2}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 56
    iput p1, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    .line 57
    iput-object p2, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 103
    return v0

    .line 105
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 106
    return v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    return v0

    .line 111
    :cond_2
    move-object v2, p1

    check-cast v2, Lnet/sf/scuba/smartcards/CardEvent;

    .line 112
    .local v2, "otherCardEvent":Lnet/sf/scuba/smartcards/CardEvent;
    iget v3, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    iget v4, v2, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    iget-object v4, v2, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getService()Lnet/sf/scuba/smartcards/CardService;
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 66
    iget v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 122
    iget-object v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    iget v0, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/sf/scuba/smartcards/CardEvent;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Card inserted in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Card removed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/CardEvent;->service:Lnet/sf/scuba/smartcards/CardService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
