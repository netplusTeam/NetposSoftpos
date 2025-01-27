.class public Lpub/devrel/easypermissions/AppSettingsDialog;
.super Ljava/lang/Object;
.source "AppSettingsDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lpub/devrel/easypermissions/AppSettingsDialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SETTINGS_REQ_CODE:I = 0x3ebd

.field static final EXTRA_APP_SETTINGS:Ljava/lang/String; = "extra_app_settings"

.field private static final TAG:Ljava/lang/String; = "EasyPermissions"


# instance fields
.field private mActivityOrFragment:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mIntentFlags:I

.field private final mNegativeButtonText:Ljava/lang/String;

.field private final mPositiveButtonText:Ljava/lang/String;

.field private final mRationale:Ljava/lang/String;

.field private final mRequestCode:I

.field private final mThemeResId:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lpub/devrel/easypermissions/AppSettingsDialog$1;

    invoke-direct {v0}, Lpub/devrel/easypermissions/AppSettingsDialog$1;-><init>()V

    sput-object v0, Lpub/devrel/easypermissions/AppSettingsDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lpub/devrel/easypermissions/AppSettingsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lpub/devrel/easypermissions/AppSettingsDialog$1;

    .line 27
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "activityOrFragment"    # Ljava/lang/Object;
    .param p2, "themeResId"    # I
    .param p3, "rationale"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "positiveButtonText"    # Ljava/lang/String;
    .param p6, "negativeButtonText"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "intentFlags"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    .line 79
    iput p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    .line 80
    iput-object p3, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 84
    iput p7, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    .line 85
    iput p8, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILpub/devrel/easypermissions/AppSettingsDialog$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # Lpub/devrel/easypermissions/AppSettingsDialog$1;

    .line 27
    invoke-direct/range {p0 .. p8}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static fromIntent(Landroid/content/Intent;Landroid/app/Activity;)Lpub/devrel/easypermissions/AppSettingsDialog;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 89
    const-string v0, "extra_app_settings"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    .line 94
    .local v0, "dialog":Lpub/devrel/easypermissions/AppSettingsDialog;
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent contains null value for EXTRA_APP_SETTINGS: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extras="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "EasyPermissions"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;

    invoke-direct {v1, p1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->build()Lpub/devrel/easypermissions/AppSettingsDialog;

    move-result-object v0

    .line 103
    :cond_0
    invoke-direct {v0, p1}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    .line 104
    return-object v0
.end method

.method private setActivityOrFragment(Ljava/lang/Object;)V
    .locals 3
    .param p1, "activityOrFragment"    # Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    .line 110
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 112
    :cond_0
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 113
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startForResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mActivityOrFragment:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 121
    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 122
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Landroidx/fragment/app/Fragment;

    iget v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method getIntentFlags()I
    .locals 1

    .line 171
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    return v0
.end method

.method public show()V
    .locals 1

    .line 131
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->createShowDialogIntent(Landroid/content/Context;Lpub/devrel/easypermissions/AppSettingsDialog;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->startForResult(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method showDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 3
    .param p1, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 140
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 141
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    goto :goto_0

    .line 143
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .restart local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    :goto_0
    const/4 v1, 0x0

    .line 146
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    .line 147
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    .line 148
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    .line 150
    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 145
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 161
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mThemeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRationale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mPositiveButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mNegativeButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mRequestCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog;->mIntentFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
