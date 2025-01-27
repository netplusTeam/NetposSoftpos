.class public Lcom/itextpdf/kernel/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/itextpdf/kernel/events/Event;->type:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/kernel/events/Event;->type:Ljava/lang/String;

    return-object v0
.end method
