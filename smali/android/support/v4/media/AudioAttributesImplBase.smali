###### Class android.support.v4.media.AudioAttributesImplBase (android.support.v4.media.AudioAttributesImplBase)
.class Landroid/support/v4/media/AudioAttributesImplBase;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroid/support/v4/media/AudioAttributesImpl;


# instance fields
.field mContentType:I

.field mFlags:I

.field mLegacyStream:I

.field mUsage:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 50
    return-void
.end method

.method constructor <init>(IIII)V
    .registers 6
    .param p1, "contentType"    # I
    .param p2, "flags"    # I
    .param p3, "usage"    # I
    .param p4, "legacyStream"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 40
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 42
    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 53
    iput p1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 54
    iput p2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 55
    iput p3, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 56
    iput p4, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    .line 57
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/AudioAttributesImpl;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 158
    if-nez p0, :cond_4

    .line 159
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_4
    const-string v0, "android.support.v4.media.audio_attrs.USAGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "usage":I
    const-string v2, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, "contentType":I
    const-string v3, "android.support.v4.media.audio_attrs.FLAGS"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "flags":I
    const-string v3, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "legacyStream":I
    new-instance v4, Landroid/support/v4/media/AudioAttributesImplBase;

    invoke-direct {v4, v2, v1, v0, v3}, Landroid/support/v4/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Landroid/support/v4/media/AudioAttributesImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 129
    return v1

    .line 131
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/support/v4/media/AudioAttributesImplBase;

    .line 132
    .local v0, "that":Landroid/support/v4/media/AudioAttributesImplBase;
    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesImplBase;->getContentType()I

    move-result v3

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesImplBase;->getFlags()I

    move-result v3

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/media/AudioAttributesImplBase;->getUsage()I

    move-result v3

    if-ne v2, v3, :cond_29

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    iget v3, v0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    if-ne v2, v3, :cond_29

    const/4 v1, 0x1

    nop

    :cond_29
    return v1
.end method

.method public getAudioAttributes()Ljava/lang/Object;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .registers 4

    .line 96
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 97
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/support/v4/media/AudioAttributesImplBase;->getLegacyStreamType()I

    move-result v1

    .line 98
    .local v1, "legacyStream":I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 99
    or-int/lit8 v0, v0, 0x4

    goto :goto_11

    .line 100
    :cond_c
    const/4 v2, 0x7

    if-ne v1, v2, :cond_11

    .line 101
    or-int/lit8 v0, v0, 0x1

    .line 103
    :cond_11
    :goto_11
    and-int/lit16 v2, v0, 0x111

    return v2
.end method

.method public getLegacyStreamType()I
    .registers 4

    .line 73
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 74
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0

    .line 76
    :cond_8
    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public getRawLegacyStreamType()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    return v0
.end method

.method public getUsage()I
    .registers 2

    .line 91
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 4

    .line 68
    iget v0, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/AudioAttributesCompat;->toVolumeStreamType(ZII)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.v4.media.audio_attrs.USAGE"

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v1, "android.support.v4.media.audio_attrs.CONTENT_TYPE"

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v1, "android.support.v4.media.audio_attrs.FLAGS"

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 113
    const-string v1, "android.support.v4.media.audio_attrs.LEGACY_STREAM_TYPE"

    iget v2, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_26
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioAttributesCompat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    .line 142
    const-string v1, " stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mLegacyStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, " derived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_1b
    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mUsage:I

    .line 146
    invoke-static {v1}, Landroid/support/v4/media/AudioAttributesCompat;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " content="

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mContentType:I

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/media/AudioAttributesImplBase;->mFlags:I

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
