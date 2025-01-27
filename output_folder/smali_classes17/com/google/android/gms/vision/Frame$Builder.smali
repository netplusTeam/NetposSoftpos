.class public Lcom/google/android/gms/vision/Frame$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/vision/Frame;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/Frame;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/Frame;-><init>(Lcom/google/android/gms/vision/zzb;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/vision/Frame;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0}, Lcom/google/android/gms/vision/Frame;->zzb(Lcom/google/android/gms/vision/Frame;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0}, Lcom/google/android/gms/vision/Frame;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/vision/Frame$zza;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 3

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-static {v2, p1}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 8
    invoke-static {p1, v1}, Lcom/google/android/gms/vision/Frame$Metadata;->zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 9
    return-object p0
.end method

.method public setId(I)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame$Metadata;->zzd(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 36
    return-object p0
.end method

.method public setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 2

    .line 22
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 26
    sparse-switch p4, :sswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x25

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unsupported image format: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :sswitch_0
    nop

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 32
    invoke-static {p1, p3}, Lcom/google/android/gms/vision/Frame$Metadata;->zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 33
    invoke-static {p1, p4}, Lcom/google/android/gms/vision/Frame$Metadata;->zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 34
    return-object p0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid image data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null image data supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPlanes([Landroid/media/Image$Plane;III)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 2

    .line 10
    if-eqz p1, :cond_2

    .line 12
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 14
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    new-instance v1, Lcom/google/android/gms/vision/Frame$zza;

    invoke-direct {v1, p1}, Lcom/google/android/gms/vision/Frame$zza;-><init>([Landroid/media/Image$Plane;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/vision/Frame;->zza(Lcom/google/android/gms/vision/Frame;Lcom/google/android/gms/vision/Frame$zza;)Lcom/google/android/gms/vision/Frame$zza;

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object p1

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 19
    invoke-static {p1, p3}, Lcom/google/android/gms/vision/Frame$Metadata;->zzb(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 20
    invoke-static {p1, p4}, Lcom/google/android/gms/vision/Frame$Metadata;->zzc(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 21
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid image data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only android.graphics.ImageFormat#YUV_420_888 is supported which should have 3 planes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null image data supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/vision/Frame$Metadata;->zze(Lcom/google/android/gms/vision/Frame$Metadata;I)I

    .line 40
    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/google/android/gms/vision/Frame$Builder;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/vision/Frame$Builder;->zza:Lcom/google/android/gms/vision/Frame;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/Frame;->getMetadata()Lcom/google/android/gms/vision/Frame$Metadata;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/vision/Frame$Metadata;->zza(Lcom/google/android/gms/vision/Frame$Metadata;J)J

    .line 38
    return-object p0
.end method
