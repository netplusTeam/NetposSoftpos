.class public final Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory;
.super Ljava/lang/Object;
.source "NfcCardReaderViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory$InstanceHolder;->access$000()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 27
    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 19
    invoke-static {}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory;->newInstance()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel_Factory;->get()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    return-object v0
.end method
