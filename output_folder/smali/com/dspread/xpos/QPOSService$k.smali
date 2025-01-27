.class Lcom/dspread/xpos/QPOSService$k;
.super Ljava/lang/Object;
.source "QPOSService.java"

# interfaces
.implements Lcom/dspread/xpos/t0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dspread/xpos/QPOSService;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/QPOSService;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/QPOSService$k;->a:Lcom/dspread/xpos/QPOSService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/QPOSService$k;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v0}, Lcom/dspread/xpos/QPOSService;->closeUsb()V

    return-void
.end method
