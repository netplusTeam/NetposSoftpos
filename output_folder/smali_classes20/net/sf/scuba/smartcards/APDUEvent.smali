.class public Lnet/sf/scuba/smartcards/APDUEvent;
.super Ljava/util/EventObject;
.source "APDUEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x6342418f7083545cL


# instance fields
.field private capdu:Lnet/sf/scuba/smartcards/CommandAPDU;

.field private rapdu:Lnet/sf/scuba/smartcards/ResponseAPDU;

.field private sequenceNumber:I

.field private type:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;ILnet/sf/scuba/smartcards/CommandAPDU;Lnet/sf/scuba/smartcards/ResponseAPDU;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/io/Serializable;
    .param p3, "sequenceNumber"    # I
    .param p4, "capdu"    # Lnet/sf/scuba/smartcards/CommandAPDU;
    .param p5, "rapdu"    # Lnet/sf/scuba/smartcards/ResponseAPDU;

    .line 38
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p2, p0, Lnet/sf/scuba/smartcards/APDUEvent;->type:Ljava/io/Serializable;

    .line 40
    iput p3, p0, Lnet/sf/scuba/smartcards/APDUEvent;->sequenceNumber:I

    .line 41
    iput-object p4, p0, Lnet/sf/scuba/smartcards/APDUEvent;->capdu:Lnet/sf/scuba/smartcards/CommandAPDU;

    .line 42
    iput-object p5, p0, Lnet/sf/scuba/smartcards/APDUEvent;->rapdu:Lnet/sf/scuba/smartcards/ResponseAPDU;

    .line 43
    return-void
.end method


# virtual methods
.method public getCommandAPDU()Lnet/sf/scuba/smartcards/CommandAPDU;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/sf/scuba/smartcards/APDUEvent;->capdu:Lnet/sf/scuba/smartcards/CommandAPDU;

    return-object v0
.end method

.method public getResponseAPDU()Lnet/sf/scuba/smartcards/ResponseAPDU;
    .locals 1

    .line 58
    iget-object v0, p0, Lnet/sf/scuba/smartcards/APDUEvent;->rapdu:Lnet/sf/scuba/smartcards/ResponseAPDU;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lnet/sf/scuba/smartcards/APDUEvent;->sequenceNumber:I

    return v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lnet/sf/scuba/smartcards/APDUEvent;->type:Ljava/io/Serializable;

    return-object v0
.end method
