.class public abstract Lcom/dspread/sp/c$b;
.super Landroid/os/Binder;
.source "ISPStatusType.java"

# interfaces
.implements Lcom/dspread/sp/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/sp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/sp/c$b$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "com.dspread.sp.ISPStatusType"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.dspread.sp.ISPStatusType"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/dspread/sp/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.dspread.sp.ISPStatusType"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/dspread/sp/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/dspread/sp/c;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/dspread/sp/c$b$a;

    invoke-direct {v0, p0}, Lcom/dspread/sp/c$b$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static a(Lcom/dspread/sp/c;)Z
    .locals 1

    .line 6
    sget-object v0, Lcom/dspread/sp/c$b$a;->j:Lcom/dspread/sp/c;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 10
    sput-object p0, Lcom/dspread/sp/c$b$a;->j:Lcom/dspread/sp/c;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e()Lcom/dspread/sp/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/sp/c$b$a;->j:Lcom/dspread/sp/c;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 12
    :cond_0
    const-string p1, "com.dspread.sp.ISPStatusType"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
