.class public Lcom/itextpdf/kernel/counter/context/UnknownContext;
.super Ljava/lang/Object;
.source "UnknownContext.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/context/IContext;


# static fields
.field public static final PERMISSIVE:Lcom/itextpdf/kernel/counter/context/IContext;

.field public static final RESTRICTIVE:Lcom/itextpdf/kernel/counter/context/IContext;


# instance fields
.field private final allowEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/counter/context/UnknownContext;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->RESTRICTIVE:Lcom/itextpdf/kernel/counter/context/IContext;

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/counter/context/UnknownContext;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->PERMISSIVE:Lcom/itextpdf/kernel/counter/context/IContext;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "allowEvents"    # Z

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean p1, p0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->allowEvents:Z

    .line 66
    return-void
.end method


# virtual methods
.method public allow(Lcom/itextpdf/kernel/counter/event/IEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;

    .line 70
    iget-boolean v0, p0, Lcom/itextpdf/kernel/counter/context/UnknownContext;->allowEvents:Z

    return v0
.end method
