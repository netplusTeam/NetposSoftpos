.class public Lcom/itextpdf/kernel/counter/event/CoreEvent;
.super Ljava/lang/Object;
.source "CoreEvent.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/event/IGenericEvent;


# static fields
.field public static final PROCESS:Lcom/itextpdf/kernel/counter/event/CoreEvent;


# instance fields
.field private final subtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/itextpdf/kernel/counter/event/CoreEvent;

    const-string v1, "process"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/counter/event/CoreEvent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/kernel/counter/event/CoreEvent;->PROCESS:Lcom/itextpdf/kernel/counter/event/CoreEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtype"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/itextpdf/kernel/counter/event/CoreEvent;->subtype:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "core-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/counter/event/CoreEvent;->subtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "com.itextpdf"

    return-object v0
.end method
