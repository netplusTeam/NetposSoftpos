.class public final Lcom/google/android/gms/internal/vision/zzjb$zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzg"
.end annotation


# static fields
.field public static final enum zza:I

.field public static final enum zzb:I

.field public static final enum zzc:I

.field public static final enum zzd:I

.field public static final enum zze:I

.field public static final enum zzf:I

.field public static final enum zzg:I

.field private static final synthetic zzh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zza:I

    .line 3
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzb:I

    .line 4
    const/4 v2, 0x3

    sput v2, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzc:I

    .line 5
    const/4 v3, 0x4

    sput v3, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzd:I

    .line 6
    const/4 v4, 0x5

    sput v4, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zze:I

    .line 7
    const/4 v5, 0x6

    sput v5, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzf:I

    .line 8
    const/4 v6, 0x7

    sput v6, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzg:I

    .line 9
    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v1, v7, v0

    aput v2, v7, v1

    aput v3, v7, v2

    aput v4, v7, v3

    aput v5, v7, v4

    aput v6, v7, v5

    .line 10
    sput-object v7, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzh:[I

    return-void
.end method

.method public static zza()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjb$zzg;->zzh:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
