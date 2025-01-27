.class Lcom/dspread/sp/d$b$a;
.super Ljava/lang/Object;
.source "ISPUserType.java"

# interfaces
.implements Lcom/dspread/sp/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/sp/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static j:Lcom/dspread/sp/d;


# instance fields
.field private i:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/sp/d$b$a;->i:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/sp/d$b$a;->i:Landroid/os/IBinder;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.dspread.sp.ISPUserType"

    return-object v0
.end method
