/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: honlee <honlee@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/24 21:36:15 by honlee            #+#    #+#             */
/*   Updated: 2021/02/24 21:46:47 by honlee           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdio.h>
#include <string.h>

size_t		ft_strlen(const char *str);
char        *ft_strcpy(char *dist, const char *src);
int         ft_strcmp(const char *s1, const char *s2);
ssize_t     ft_read(int fd, const void *buf, size_t count);
ssize_t     ft_write(int fd, void *buf, size_t nbytes);
char        *ft_strdup(const char *s1);

#endif